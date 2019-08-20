function Get-UnifiController {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $BaseUri,

        [Parameter(Mandatory = $true)]
        [string] $Port,

        [Parameter(Mandatory = $false)]
        [bool] $SkipCertificateCheck = $false
    )

    $ApiUri = "https://" + "$BaseUri" + ":" + "$Port" + "/status"

    $RequestParameters = @{
        Uri = $ApiUri
        Method = [Microsoft.PowerShell.Commands.WebRequestMethod]::Get
        ContentType = "application/json"
    }

    $Response = $false

    try {
        if ($SkipCertificateCheck) {
            if ($PSVersionTable.PSVersion.Major -ge 6) {
                $RequestParameters.SkipCertificateCheck = $Global:UnifiAPI_SkipCertificateCheck
            } else {
                if (-not("dummy" -as [type])) {
                    add-type -TypeDefinition @"
                        using System;
                        using System.Net;
                        using System.Net.Security;
                    using System.Security.Cryptography.X509Certificates;
                
                    public static class Dummy {
                        public static bool ReturnTrue(object sender,
                            X509Certificate certificate,
                            X509Chain chain,
                            SslPolicyErrors sslPolicyErrors) { return true; }
                
                        public static RemoteCertificateValidationCallback GetDelegate() {
                            return new RemoteCertificateValidationCallback(Dummy.ReturnTrue);
                        }
                    }
"@
                }
                
                [System.Net.ServicePointManager]::ServerCertificateValidationCallback = [dummy]::GetDelegate()
                [Net.ServicePointManager]::SecurityProtocol = ([Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12)
        
            }
        }    

        $Response = (Invoke-RestMethod @RequestParameters).meta
    } catch {
        Write-Error $PSItem.Exception.Message
    } finally {
        if ($PSVersionTable.PSVersion.Major -lt 6 -and $SkipCertificateCheck) {
            [Net.ServicePointManager]::ServerCertificateValidationCallback = $null
        }
    }

    return $Response
}