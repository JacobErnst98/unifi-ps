---
external help file: Unifi-PS-help.xml
Module Name: Unifi-PS
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteDDNSInfo.md
schema: 2.0.0
---

# Get-UnifiSiteDDNSInfo

## SYNOPSIS
Retrieves site dynamic DNS information from the Unifi Controller.

## SYNTAX

```
Get-UnifiSiteDDNSInfo [-SiteName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteDDNSInfo** function retrieves the dynamic DNS information from the Unifi Controller for the specified site.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteDDNSInfo -SiteName "Contoso"
```

This example retrieves the dynamic DNS information for the site named "Contoso".

## PARAMETERS

### -SiteName
The name of the site in the Unifi Controller to retrieve dynamic DNS information for.

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
