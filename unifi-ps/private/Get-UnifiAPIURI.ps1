function Get-UnifiAPIURI {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $Resource
    )

    if (!$Global:UnifiAPI_BaseUri) {

        
        $config = Import-Configuration -CompanyName "Dustin Riley" -Name "Unifi-ps"

        if ($config.BaseUri){

            $Global:UnifiAPI_BaseUri = $config.BaseUri

        }else{

            Write-Error "BaseUri has not be configured please run Set-UnifiAPIConfig."
            return

        }

    }

    if (!$Global:UnifiAPI_Port) {

        $config = Import-Configuration

        if ($config.port){

            $Global:UnifiAPI_Port = $config.port

        }
        else{

            Write-Error "Port has been configured please run Set-UnifiAPIConfig."
            return

        }

    }

    $APIUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/" + "$Resource"

    return $APIUri
}