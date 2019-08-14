function Invoke-UnifiAPIRequest {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $Uri,

        [Parameter(Mandatory = $true)]
        [Microsoft.PowerShell.Commands.WebRequestMethod] $Method,

        [Parameter(Mandatory = $false)]
        [PSObject] $Body
    )

    $Response = $false

    $RequestParameters = @{
        Uri = $ApiUri
        Method = $Method
        ContentType = "application/json"
        Body = $Body
        WebSession = $Global:UnifiAPI_Session
        SkipCertificateCheck = $Global:UnifiAPI_SkipCertificateCheck
    }

    try {
        $Response = (Invoke-RestMethod $RequestParameters).data
    } catch {
        Write-Error $PSItem.Exception.Message
    }

    return $Response
}