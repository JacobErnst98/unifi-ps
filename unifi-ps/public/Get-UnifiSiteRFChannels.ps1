function Get-UnifiSiteRFChannels {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/stat/current-channel") -Method Get)
}