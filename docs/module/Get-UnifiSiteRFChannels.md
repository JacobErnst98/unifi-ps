---
external help file: Unifi-PS-help.xml
Module Name: Unifi-PS
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteRFChannels.md
schema: 2.0.0
---

# Get-UnifiSiteRFChannels

## SYNOPSIS
Retrieves site RF channels from Unifi Controller.

## SYNTAX

```
Get-UnifiSiteRFChannels [-SiteName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteRFChannels** function retrieves the RF channels in use from the Unifi Controller for a specified site.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteRFChannels -SiteName "Contoso"
```

This example retrieves the RF channels in use for the site named "Contoso".

## PARAMETERS

### -SiteName
The name of the site in the Unifi Controller to retrieve RF channels in use for.

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
