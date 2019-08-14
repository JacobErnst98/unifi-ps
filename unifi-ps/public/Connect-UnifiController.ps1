function Connect-UnifiController {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential] $Credential
    )

    if ($Global:UnifiAPI_Session) {
        Write-Error "Already connected to Unifi Controller, please disconnect before making another connection."
        return
    }

    if (!$Global:UnifiAPI_BaseUri) {
        Write-Error "Unifi API Base URI has not been set."
        return
    }

    if (!$Global:UnifiAPI_Port) {
        Write-Error "Unifi API Port has not been set."
        return
    }

    if (!$Global:UnifAPI_Protocol) {
        Write-Error "Unifi API Protocol has not been set."
    }

    $LoginUri = "$Global:UnifiAPI_Protocol" + "://" + "$Global:UnifiAPI_BaseUri" + ":" + "$Global:UnifiAPI_Port" + "/api/login"

    $RequestBody = @{
        username = $Credential.GetNetworkCredential().UserName
        password = $Credential.GetNetworkCredential().Password
    } | ConvertTo-Json

    $RequestParameters = @{
        Uri = $LoginUri
        Method = Post
        Body = $RequestBody
        ContentType = "application/json"
        SessionVariable = Session
        SkipCertificateCheck = $Global:UnifiAPI_SkipCertificateCheck
    }

    try {
        Invoke-RestMethod $RequestParameters | Out-Null
    } catch {
        Write-Error $PSItem.Exception.Message
    }

    if ($Session) {
        Set-Variable -Name UnifiAPI_Session -Value $Session -Scope Global -Force
    } else {
        Write-Error "No session returned from Invoke-RestMethod."
    }
}