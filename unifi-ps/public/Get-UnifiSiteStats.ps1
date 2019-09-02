function Get-UnifiSiteStats {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $SiteName,

        [Parameter(Mandatory = $true)]
        [string] $Interval,

        [Parameter(Mandatory = $true)]
        [string] $ReportType,

        [Parameter(Mandatory = $false)]
        [string[]] $Attributes = @('bytes', 'wan-tx_bytes', 'wan-rx_bytes', 'wlan_bytes', 'num_sta', 'lan-num_sta', 'wlan-num_sta', 'time', 'rx_bytes', 'tx_bytes'),

        [Parameter(Mandatory = $false)]
        [string[]] $MACFilter
    )

    switch ($Interval) {
        "5minutes" { break }
        "hourly" { break }
        "daily" { break }
        default {
            Write-Error "Invalid Interval specified."
            return
        }
    }

    switch ($ReportType) {
        "site" { break }
        "user" { break }
        "ap" { break }
        default {
            Write-Error "Invalid ReportType specified."
            return
        }
    }

    $Body = @{
        attrs = $Attributes
    }

    if ($MACFilter) {
        $Body | Add-Member -MemberType NoteProperty -Name "macs" -Value $MACFilter
    }

    $Body = $Body | ConvertTo-Json

    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteName" + "/stat/report/" + "$Interval" + "." + "$ReportType") -Method Post -Body $Body)
}