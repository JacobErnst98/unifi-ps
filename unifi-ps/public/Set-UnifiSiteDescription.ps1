function Set-UnifiSiteDescription {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $true)]
        [string] $Description
    )

    $Body = @{
        cmd = "update-site"
        desc = $Description
    } | ConvertTo-Json

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/cmd/sitemgr") -Method Post -Body $Body)
}