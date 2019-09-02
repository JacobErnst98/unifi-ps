function Remove-UnifiSite {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $true)]
        [string] $SiteID,

        [Parameter(Mandatory = $false)]
        [switch] $Confirm
    )

    $Body = @{
        cmd = "delete-site"
        site = $SiteID
    } | ConvertTo-Json

    if (!$Confirm) {
        $Confirmation = Read-Host "You are about to delete site '$SiteName', are you sure you want to do this? [y/n]"

        if ($Confirmation -ne "y") {
            return
        }
    }

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/cmd/sitemgr") -Method Post -Body $Body)
    
}