function Get-UnifiSiteEvents {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )
    
    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/stat/event") -Method Get)
}