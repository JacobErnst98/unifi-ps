function Connect-UnifiController {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential] $Credential
    )

    if ($Global:UnifiAPI_Session) {
        Write-Error "Already connected to Unifi Controller, please disconnect before making another connection."
        return
    }

    if (!$Global:UnifiAPI_BaseUri) {
        Write-Error "Unifi API Base URI has not been set."
        return
    }

    if (!$Global:UnifiAPI_Port) {
        Write-Error "Unifi API Port has not been set."
        return
    }

    $LoginUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/login"

    $RequestBody = @{
        username = $Credential.GetNetworkCredential().UserName
        password = $Credential.GetNetworkCredential().Password
    } | ConvertTo-Json

    $RequestParameters = @{
        Uri = $LoginUri
        Method = [Microsoft.PowerShell.Commands.WebRequestMethod]::Post
        Body = $RequestBody
        ContentType = "application/json"
        SessionVariable = "Session"
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

        Invoke-RestMethod @RequestParameters | Out-Null
    } catch {
        Write-Error $PSItem.Exception.Message
    } finally {
        if ($PSVersionTable.PSVersion.Major -lt 6 -and $Global:UnifiAPI_SkipCertificateCheck) {
            [System.Net.ServicePointManager]::ServerCertificateValidationCallback = $null
        }
    }

    if ($Session) {
        Set-Variable -Name UnifiAPI_Session -Value $Session -Scope Global -Force
    } else {
        Write-Error "No session returned from Invoke-RestMethod."
    }
}