# unifi-ps
PowerShell Unifi REST API Wrapper Module

Project Site: [https://github.com/derpenstiltskin/unifi-ps](https://github.com/derpenstiltskin/unifi-ps)

- [unifi-ps](#unifi-ps)
    - [What is the Unifi REST API?](#what-is-the-unifi-rest-api)
    - [What is unifi-ps?](#what-is-unifi-ps)
- [Using unifi-ps](#using-unifi-ps)
    - [Installation](#installation)
    - [Documentation and Help](#documentation-and-help)
    - [Quickstart](#quickstart)

## What is the Unifi REST API?
[Unifi Controllers](https://www.ui.com/software/), used for controlling Ubiquiti Unifi devices have an unpublished REST API that can be used to get data and modify settings stored in the Unifi Controller.

## What is unifi-ps?
unifi-ps is a Unifi REST API Wrapper Module for PowerShell.


# Using unifi-ps
unifi-ps is available on the [PowerShell Gallery](https://powershellgallery.com/packages/unifi-ps).

## Installation
```powershell
Install-Module -Name unifi-ps
```

## Documentation and Help
The online documentation for this module is available at [https://unifi-ps.readthedocs.io](https://unifi-ps.readthedocs.io).

The console documentation can be accessed with `Get-Help`.

## Quickstart
```powershell
Set-UnifiAPIConfig -BaseUri "unifi.contoso.com"
Connect-UnifiController
$Sites = Get-UnifiSites
Disconnect-UnifiController
Remove-UnifiAPIConfig
```