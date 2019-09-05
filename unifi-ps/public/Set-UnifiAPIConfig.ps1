function Set-UnifiAPIConfig {	
    [CmdletBinding()]	
    Param(	
        [Parameter(Mandatory = $true)]	
        [string] $BaseUri,	

        [Parameter(Mandatory = $true)]	
        [string] $Port,	

        [Parameter(Mandatory = $false)]	
        [switch] $SkipCertificateCheck,	

        [Parameter(Mandatory = $false)]	
        [PSObject] $Session	
    )	

    if ($SkipCertificateCheck) {	
        Set-Variable -Name "UnifiAPI_SkipCertificateCheck" -Value $SkipCertificateCheck -Scope Global -Force	
        Set-Variable -Name "UnifiAPI_BaseUri" -Value $BaseUri -Scope Global -Force	
        Set-Variable -Name "UnifiAPI_Port" -Value $Port -Scope Global -Force	
        @{ 
            SkipCertificateCheck = $SkipCertificateCheck
            BaseUri = $BaseUri
            Port = $Port
        } | Export-Configuration -scope "User" -CompanyName "Dustin Riley" -Name "Unifi-ps"
    } 
    else{
        Set-Variable -Name "UnifiAPI_BaseUri" -Value $BaseUri -Scope Global -Force	
        Set-Variable -Name "UnifiAPI_Port" -Value $Port -Scope Global -Force	
        @{ 
            BaseUri = $BaseUri
            Port = $Port
        } | Export-Configuration -scope "User" -CompanyName "Dustin Riley" -Name "Unifi-ps"
    }
} 