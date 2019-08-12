function Set-UnifiAPIConfig {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $false)]
        [string] $BaseUri,

        [Parameter(Mandatory = $false)]
        [string] $ContentType,

        [Parameter(Mandatory = $false)]
        [string] $Port,

        [Parameter(Mandatory = $false)]
        [string] $Protocol,

        [Parameter(Mandatory = $false)]
        [bool] $SkipCertificateCheck,

        [Parameter(Mandatory = $false)]
        [PSObject] $Session
    )

    if ($BaseUri) {
        Set-Variable -Name "UnifiAPI_BaseUri" -Value $BaseUri -Scope Global -Force
    }

    if ($ContentType) {
        Set-Variable -Name "UnifiAPI_ContentType" -Value $ContentType -Scope Global -Force
    }

    if ($Port) {
        Set-Variable -Name "UnifiAPI_Port" -Value $Port -Scope Global -Force
    }

    if ($Protocol) {
        Set-Variable -Name -"UnifiAPI_Protocol" -Value $Protocol -Scope Global -Force
    }

    if ($SkipCertificateCheck) {
        Set-Variable -Name "UnifiAPI_SkipCertificateCheck" -Value $SkipCertificateCheck -Scope Global -Force
    }

    if ($Session) {
        Set-Variable -Name  "UnifiAPI_Session" -Value $Session -Scope Global -Force
    }
}