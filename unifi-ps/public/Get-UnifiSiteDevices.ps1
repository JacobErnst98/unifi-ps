function Get-UnifiSiteDevices {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $false)]
        [bool] $Detailed = $false
    )

    if ($Detailed) {
        $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/device"
    } else {
        $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/device-basic"
    }

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}