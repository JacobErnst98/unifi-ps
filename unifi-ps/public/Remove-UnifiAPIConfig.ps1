function Remove-UnifiAPIConfig {
    Remove-Variable -Name "UnifiAPI_BaseUri" -Scope Global -Force -ErrorAction SilentlyContinue
    Remove-Variable -Name "UnifiAPI_ContentType" -Scope Global -Force -ErrorAction SilentlyContinue
    Remove-Variable -Name "UnifiAPI_Port" -Scope Global -Force -ErrorAction SilentlyContinue
    Remove-Variable -Name "UnifiAPI_Protocol" -Scope Global -Force -ErrorAction SilentlyContinue
    Remove-Variable -Name "UnifiAPI_SkipCertificateCheck" -Scope Global -Force -ErrorAction SilentlyContinue
    Remove-Variable -Name "UnifiAPI_Session" -Scope Global -Force -ErrorAction SilentlyContinue
}