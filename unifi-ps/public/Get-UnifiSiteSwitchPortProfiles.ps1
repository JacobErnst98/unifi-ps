function Get-UnifiSiteSwitchPortProfiles {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/rest/portconf") -Method Get)
}