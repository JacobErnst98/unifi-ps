function Add-UnifiSite {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $Description
    )

    $Body = @{
        cmd = "add-site"
        desc = $Description
    } | ConvertTo-Json

    return (Invoke-UnifiAPIRequest -Resource ("api/s/default/cmd/sitemgr") -Method Post -Body $Body)
}