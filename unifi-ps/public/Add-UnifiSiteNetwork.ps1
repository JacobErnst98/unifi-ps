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
        [string]$DomainName,

        [Parameter(Mandatory = $false, ParameterSetName="DHCP")]
        [switch]$DHCP,

        [Parameter(Mandatory = $false, ParameterSetName="DHCP")]
        [string]$DhcpStart,

        [Parameter(Mandatory = $false, ParameterSetName="DHCP")]
        [string]$DhcpEnd


    )

    $Body = @{}
    $Body['enabled'] = $true
    $Body['is_nat'] = $true
    $Body['ip_subnet'] = $IpSubnet
    $Body['dhcpd_enabled'] = $false

    if($DomainName){
    $Body['domain_name'] = $DomainName
    }

    $Body['name'] = $Name
    $Body['purpose'] = "corporate"
    $Body['site_id'] =$SiteID

    if($Vlan){
    $Body['vlan_enabled'] = $true
    $Body['vlan'] = $Vlan
    }

    if($DHCP){
        if($DhcpStart -and $DhcpEnd){
            $Body['dhcpd_enabled'] = $true
            $Body['dhcpd_start'] = $DhcpStart
            $Body['dhcpd_stop'] = $DhcpEnd
    
        }
        else{
            Write-Error "You must specify -DhcpStart and -DhcpEnd when using -DHCP"
            return
        }
    }

    $BodyJson = $Body | ConvertTo-Json
    return (Invoke-UnifiAPIRequest -Resource ("api/s/" + "$SiteID" + "/rest/networkconf") -Method Post -Body $BodyJson)
}