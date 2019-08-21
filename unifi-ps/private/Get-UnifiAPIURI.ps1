function Get-UnifiAPIURI {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $Resource
    )

    if (!$Global:UnifiAPI_BaseUri) {
        Write-Error "BaseUri has not be configured."
        return
    }

    if (!$Global:UnifiAPI_Port) {
        Write-Error "Port has been configured."
        return
    }

    $APIUri = "https://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/" + "$Resource"

    return $APIUri
}