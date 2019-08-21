function Get-UnifiSiteTaggedMACs {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )
    
    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/rest/tag") -Method Get)
}