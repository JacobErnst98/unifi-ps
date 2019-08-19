---
external help file: Unifi-PS-help.xml
Module Name: unifi-ps
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteEvents.md
schema: 2.0.0
---

# Get-UnifiSiteEvents

## SYNOPSIS
Retrieves Unifi Controller site events.

## SYNTAX

```
Get-UnifiSiteEvents [-SiteName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteEvents** function retrieves the last 3000 events from a Unifi Controller for a specified site.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteEvents -SiteName "Contoso"
```

This example retrieves the last 3000 events for the site named "Contoso".

## PARAMETERS

### -SiteName
The name of the site in the Unifi Controller to retrieve site alarms for.

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
