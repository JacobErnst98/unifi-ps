function Disconnect-UnifiController {
    if ($Global:UnifiAPI_Session) {
        $LogoutUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/logout"

        if ($Global:UnifiAPI_SkipCertificateCheck) {
            try {
                Invoke-RestMethod -Uri $LogoutUri -Method Get -WebSession $Global:UnifiAPI_Session -SkipCertificateCheck
            } catch {
                Write-Error $PSItem.Exception.Message
            }
        } else {
            try {
                Invoke-RestMethod -Uri $LogoutUri -Method Get -WebSession $Global:UnifiAPI_Session
            } catch {
                Write-Error $PSItem.Exception.Message
            }         
        }

        Remove-Variable -Name "UnifiAPI_Session"
    } else {
        Write-Error "No session exists to disconnect from."
    }
}

function Disconnect-UnifiController {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [PSCustomObject]$UnifiSession
    )

    $ApiUri = "https://" + $UnifiSession.Uri + ":" + $UnifiSession.Port + "/logout"

    if ($UnifiSession.SkipCertificateCheck) {
        try {
            Invoke-RestMethod -Uri $ApiUri -Method Get -WebSession $UnifiSession.Session -SkipCertificateCheck
        } catch {
            Write-Error $PSItem.Exception.Message
        }
        
    } else {
        try {
            Invoke-RestMethod -Uri $ApiUri -Method Get -WebSession $UnifiSession.Session
        } catch {
            Write-Error $PSItem.Exception.Message
        }
    }
}