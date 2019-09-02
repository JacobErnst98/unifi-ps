function Invoke-UnifiAPIRequest {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $Resource,

        [Parameter(Mandatory = $true)]
        [Microsoft.PowerShell.Commands.WebRequestMethod] $Method,

        [Parameter(Mandatory = $false)]
        [string] $Body
    )

    $ApiUri = Get-UnifiAPIURI -Resource $Resource

    $Response = $false

    $RequestParameters = @{
        Uri = $ApiUri
        Method = $Method
        ContentType = "application/json"
        WebSession = $Global:UnifiAPI_Session
    }

    if ($Body) {
        $RequestParameters.Body = $Body
    }

    try {
        if ($Global:UnifiAPI_SkipCertificateCheck) {
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

        $Response = (Invoke-RestMethod @RequestParameters).data
    } catch {
        Write-Error $PSItem.Exception.Message
    } finally {
        if ($PSVersionTable.PSVersion.Major -lt 6 -and $Global:UnifiAPI_SkipCertificateCheck) {
            [Net.ServicePointManager]::ServerCertificateValidationCallback = $null
        }
    }

    return $Response
}