function Get-UnifiSites {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [bool] $ShowHealth = $false
    )

    $Filter = "api/self/sites"

    if ($ShowHealth) {
        $Filter = "api/stat/sites"
    }

    return (Invoke-UnifiAPIRequest -Resource ("$Filter") -Method Get)
}