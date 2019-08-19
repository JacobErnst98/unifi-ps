---
external help file: Unifi-PS-help.xml
Module Name: Unifi-PS
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSites.md
schema: 2.0.0
---

# Get-UnifiSites

## SYNOPSIS
Retrieves site listing from the Unifi Controller.

## SYNTAX

```
Get-UnifiSites [[-ShowHealth] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSites** function retrieves a listing of sites and optionally their health from a Unifi Controller.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSites -ShowHealth $true
```

This example retrieves a listing of sites including their health.

## PARAMETERS

### -ShowHealth
Option to show health details for the sites retrieved.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
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
