[![PowerShell Gallery Version](https://img.shields.io/powershellgallery/v/Unifi-PS?color=blue)](https://powershellgallery.com/packages/Unifi-PS/)
[![Documentation Status](https://readthedocs.org/projects/unifi-ps/badge/?version=latest)](https://unifi-ps.readthedocs.io/en/latest/?badge=latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

# Unifi-PS
PowerShell Unifi REST API Wrapper Module

- [Unifi-PS](#unifi-ps)
    - [What is the Unifi REST API?](#what-is-the-unifi-rest-api)
    - [What is Unifi-PS?](#what-is-unifi-ps)
- [Using Unifi-PS](#using-unifi-ps)
    - [Installation](#installation)
    - [Documentation and Help](#documentation-and-help)
    - [Quickstart](#quickstart)
- [Licensing](#licensing)

### What is the Unifi REST API?
[Unifi Controllers](https://www.ui.com/software/), used for managing Ubiquiti Unifi devices have an unpublished REST API that can be used to query data and modify settings.

### What is Unifi-PS?
Unifi-PS is a Unifi REST API Wrapper Module for PowerShell used to query data from the Unifi Controller. This module does not contain functionality to make settings changes as this REST API is unpublished.

# Using Unifi-PS
Unifi-PS is available on the [PowerShell Gallery](https://powershellgallery.com/packages/unifi-ps).

### Installation
```powershell
Install-Module -Name Unifi-PS
```

### Documentation and Help
The online documentation for this module is available at [https://unifi-ps.readthedocs.io](https://unifi-ps.readthedocs.io).

The console documentation can be accessed with `Get-Help`.

### Quickstart
```powershell
Set-UnifiAPIConfig -BaseUri "unifi.contoso.com"
Connect-UnifiController
$Sites = Get-UnifiSites
Disconnect-UnifiController
Remove-UnifiAPIConfig
```

# Licensing
Unifi-PS is licensed under the [MIT license](LICENSE).