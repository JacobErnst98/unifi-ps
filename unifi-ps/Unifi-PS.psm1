$PublicPath = Join-Path -Path $PSScriptRoot -ChildPath "\public\"
$Public = @( Get-ChildItem -Path ($PublicPath + "*.ps1") -ErrorAction SilentlyContinue )

$PrivatePath = Join-Path -Path $PSScriptRoot -ChildPath "\private\"
$Private = @( Get-ChildItem -Path ($PrivatePath + "*.ps1") -ErrorAction SilentlyContinue )

foreach ($Import in @($Public + $Private)) {
    try {
        . $Import.FullName
    } catch {
        Write-Error -Message "Failed to import function $($Import.FullName): $_"
    }
}

Set-UnifiAPIConfig -Port "8443" -SkipCertificateCheck $false