function Get-UnifiSites {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [bool] $ShowHealth = $false
    )

    if ($ShowHealth) {
        $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/stat/sites"
    } else {
        $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/self/sites"
    }

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}