function Get-UnifiSiteClients {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $false)]
        [bool] $ActiveOnly = $false
    )

    if ($ActiveOnly) {
        $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/sta" 
    } else {
        $ApiUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/rest/user" 
    }

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}