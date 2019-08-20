function Get-UnifiSiteEvents {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/event"

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}