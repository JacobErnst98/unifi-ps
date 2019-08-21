function Get-UnifiSiteRogueAPs {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )
    
    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/stat/rogueap") -Method Get)
}