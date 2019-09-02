function Get-UnifiSiteClients {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $false)]
        [switch] $ActiveOnly
    )

    $Filter = "/rest/user"

    if ($ActiveOnly) {
        $Filter = "/stat/sta"
    }

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "$Filter") -Method Get)
}