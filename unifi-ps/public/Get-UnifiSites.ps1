function Get-UnifiSites {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [bool] $ShowHealth = $false
    )

    if ($ShowHealth) {
        $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/api/stat/sites"
    } else {
        $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/api/self/sites"
    }

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}