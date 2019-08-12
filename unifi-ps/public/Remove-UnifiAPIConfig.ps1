function Remove-UnifiAPIConfig {
    Remove-Variable -Name "UnifiAPI_BaseUri"
    Remove-Variable -Name "UnifiAPI_ContentType"
    Remove-Variable -Name "UnifiAPI_Port"
    Remove-Variable -Name "UnifiAPI_Protocol"
    Remove-Variable -Name "UnifiAPI_SkipCertificateCheck"
    Remove-Variable -Name "UnifiAPI_Session"
}