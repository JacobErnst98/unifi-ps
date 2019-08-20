function Get-UnifiSiteHealth {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    $ApiUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/s/" + $SiteName + "/stat/health"

    $Response = Invoke-UnifiAPIRequest -Uri $ApiUri -Method Get

    return $Response
}