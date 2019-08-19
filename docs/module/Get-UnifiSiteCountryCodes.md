---
external help file: Unifi-PS-help.xml
Module Name: unifi-ps
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteCountryCodes.md
schema: 2.0.0
---

# Get-UnifiSiteCountryCodes

## SYNOPSIS
Retrieves list of site country codes from the Unifi Controller.

## SYNTAX

```
Get-UnifiSiteCountryCodes [-SiteName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteCountryCodes** function retrieves a listing of country codes from the Unifi Controller for the specified site.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteCountryCodes -SiteName "Contoso"
```

This example retrieves country codes for the site named "Contoso".

## PARAMETERS

### -SiteName
The name of the site in the Unifi Controller to retrieve country codes for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
