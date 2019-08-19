---
external help file: Unifi-PS-help.xml
Module Name: unifi-ps
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteHealth.md
schema: 2.0.0
---

# Get-UnifiSiteHealth

## SYNOPSIS
Retrieves site health from Unifi Controller.

## SYNTAX

```
Get-UnifiSiteHealth [-SiteName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteHealth** function retrieves the health status from a Unifi Controller 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteHealth -SiteName "Contoso"
```

This example retrieves the health status for the site named "Contoso".

## PARAMETERS

### -SiteName
The name of the site in the Unifi Controller to retrieve site health for.

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
