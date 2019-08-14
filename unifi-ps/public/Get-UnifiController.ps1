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
        Method = Post
        ContentType = "application/json"
        SkipCertificateCheck = $SkipCertificateCheck
    }

    try {
        $Response = (Invoke-RestMethod $RequestParameters).data
    } catch {
        Write-Error $PSItem.Exception.Message
    }

    return $Response
}