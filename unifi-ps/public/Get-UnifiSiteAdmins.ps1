function Get-UnifiSiteAdmins {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName
    )

    $Body = @{
        cmd = "get-admins"
    } | ConvertTo-Json

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/cmd/sitemgr") -Method Post -Body $Body)
}