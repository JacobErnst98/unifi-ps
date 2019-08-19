---
external help file: Unifi-PS-help.xml
Module Name: unifi-ps
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteDevices.md
schema: 2.0.0
---

# Get-UnifiSiteDevices

## SYNOPSIS
Retrieves Unifi Controller site devices.

## SYNTAX

```
Get-UnifiSiteDevices [-SiteName] <String> [[-Detailed] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteDevices** function retrieves a listing of devices from the Unifi Controller for a spcified site. The output can either be in a basic or detailed format.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteDevices -SiteName "Contoso"
```

This example returns a simple view of devices in the site named "Contoso".

## PARAMETERS

### -Detailed
If true, returns a detailed view of devices.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SiteName
The name of the site in the Unifi Controller to retrieve devices for.

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
