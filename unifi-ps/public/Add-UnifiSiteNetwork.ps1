function Add-UnifiSiteNetwork {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string]$SiteID,

        [Parameter(Mandatory = $true)]
        [string]$IpSubnet,

        [Parameter(Mandatory = $true)]
        [string]$Name,

        [Parameter(Mandatory = $true)]
        [string]$Vlan,

        [Parameter(Mandatory = $false)]
        [string]$DomainName = "",

        [Parameter(Mandatory = $false, ParameterSetName="DHCP")]
        [switch]$DHCP,

        [Parameter(Mandatory = $false, ParameterSetName="DHCP")]
        [string]$DhcpStart,

        [Parameter(Mandatory = $false, ParameterSetName="DHCP")]
        [string]$DhcpEnd


    )
    if($DHCP){
        if($DhcpStart -and $DhcpEnd){
            $Body = @{
                enabled= $true
                is_nat = $true
                ip_subnet = $IpSubnet
                dhcpd_enabled = $true
                dhcpd_start= $DhcpStart
                dhcpd_stop= $DhcpEnd
                domain_name = $DomainName
                name = $Name
                purpose = "corporate"
                site_id = $SiteID
                vlan_enabled = $true
                vlan = $Vlan
            } | ConvertTo-Json
        }
        else{
            Write-Error "You must specify -DhcpStart and -DhcpEnd when using -DHCP"
            return
        }
    }
    else {
        $Body = @{

            enabled= $true
            is_nat = $true
            ip_subnet = $IpSubnet
            dhcpd_enabled = $false
            domain_name = $DomainName
            name = $Name
            purpose = "corporate"
            site_id =$SiteID
            vlan_enabled = $true
            vlan = $Vlan
        } | ConvertTo-Json
    }
    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteID" + "/rest/networkconf") -Method Post -Body $Body)
}