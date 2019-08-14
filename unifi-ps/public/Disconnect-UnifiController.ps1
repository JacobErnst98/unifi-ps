function Disconnect-UnifiController {
    if ($Global:UnifiAPI_Session) {
        $LogoutUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/logout"

        $RequestParameters = @{
            Uri = $LogoutUri
            Method = Get
            WebSession = $Global:UnifiAPI_Session
            SkipCertificateCheck = $Global:UnifiAPI_SkipCertificateCheck
        }

        try {
            Invoke-RestMethod $RequestParameters | Out-Null
        } catch {
            Write-Error $PSItem.Exception.Message
        }

        Remove-Variable -Name "UnifiAPI_Session"
    } else {
        Write-Error "No session exists to disconnect from."
    }
}