function Get-UnifiSiteRFChannels {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/current-channel"

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}