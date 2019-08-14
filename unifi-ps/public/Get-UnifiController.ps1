function Get-UnifiController {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [string] $BaseUri,

        [Parameter(Mandatory = $true)]
        [string] $Port,

        [Parameter(Mandatory = $true)]
        [string] $Protocol,

        [Parameter(Mandatory = $false)]
        [bool] $SkipCertificateCheck = $false
    )

    $ApiUri = "$Protocol" + "://" + "$BaseUri" + ":" + "$Port" + "/status"

    $RequestParameters = @{
        Uri = $ApiUri
        Method = [Microsoft.PowerShell.Commands.WebRequestMethod]::Get
        ContentType = "application/json"
        SkipCertificateCheck = $SkipCertificateCheck
    }

    $Response = $false

    try {
        $Response = (Invoke-RestMethod @RequestParameters).meta
    } catch {
        Write-Error $PSItem.Exception.Message
    }

    return $Response
}