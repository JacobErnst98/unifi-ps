function Get-UnifiSiteDDNSInfo {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/stat/dynamicdns") -Method Get)
}