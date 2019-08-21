---
external help file: Unifi-PS-help.xml
Module Name: Unifi-PS
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteRogueAPs.md
schema: 2.0.0
---

# Get-UnifiSiteRogueAPs

## SYNOPSIS
Retrieves detected rogue access points from the Unifi Controller.

## SYNTAX

```
Get-UnifiSiteRogueAPs [-SiteName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteRogueAPs** function retrieves detected rogue access points from the Unifi Controller for the specified site.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteRogueAPs -SiteName "Contoso"
```

This example retrieves a list of rogue access points detected for the site named "Contoso".

## PARAMETERS

### -SiteName
The name of the site in the Unifi Controller to retrieve detected rogue access points for.

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
