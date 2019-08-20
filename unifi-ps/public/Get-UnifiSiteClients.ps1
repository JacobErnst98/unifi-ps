function Get-UnifiSiteClients {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $false)]
        [bool] $ActiveOnly = $false
    )

    if ($ActiveOnly) {
        $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/sta" 
    } else {
        $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/rest/user" 
    }

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}