function Get-UnifiSiteAlarms {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/stat/alarm") -Method Get)
}