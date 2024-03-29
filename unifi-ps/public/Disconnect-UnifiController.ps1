function Disconnect-UnifiController {
    if ($Global:UnifiAPI_Session) {
        $RequestParameters = @{
            Uri = (Get-UnifiAPIURI -Resource "logout")
            Method = [Microsoft.PowerShell.Commands.WebRequestMethod]::Get
            WebSession = $Global:UnifiAPI_Session
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

            Remove-Variable -Name "UnifiAPI_BaseUri" -Scope Global -Force -ErrorAction SilentlyContinue
            Remove-Variable -Name "UnifiAPI_Port" -Scope Global -Force -ErrorAction SilentlyContinue
            Remove-Variable -Name "UnifiAPI_SkipCertificateCheck" -Scope Global -Force -ErrorAction SilentlyContinue
            Remove-Variable -Name "UnifiAPI_Session" -Scope Global -Force -ErrorAction SilentlyContinue
        }

        Remove-Variable -Name "UnifiAPI_Session" -Scope Global -Force -ErrorAction SilentlyContinue
    } else {
        Write-Error "No session exists to disconnect from."
    }
}