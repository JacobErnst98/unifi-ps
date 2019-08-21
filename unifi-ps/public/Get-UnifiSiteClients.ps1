function Get-UnifiSiteClients {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $false)]
        [bool] $ActiveOnly = $false
    )

    $Filter = "/rest/user"

    if ($ActiveOnly) {
        $Filter = "/stat/sta"
    }

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "$Filter") -Method Get)
}