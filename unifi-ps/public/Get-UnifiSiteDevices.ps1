function Get-UnifiSiteDevices {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $false)]
        [switch] $Detailed
    )

    $Filter = "/stat/device-basic"

    if ($Detailed) {
        $Filter = "/stat/device"
    }

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "$Filter") -Method Get)
}