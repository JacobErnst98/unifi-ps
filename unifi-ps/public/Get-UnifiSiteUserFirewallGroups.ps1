function Get-UnifiSiteUserFirewallGroups {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/rest/firewallgroup") -Method Get)
}