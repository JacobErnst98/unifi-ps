---
external help file: Unifi-PS-help.xml
Module Name: Unifi-PS
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiSiteClients.md
schema: 2.0.0
---

# Get-UnifiSiteClients

## SYNOPSIS
Retrieves clients that have connected to the Unifi Controller.

## SYNTAX

```
Get-UnifiSiteClients [-SiteName] <String> [[-ActiveOnly] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-UnifiSiteClients** function retrieves the clients that have connected to the Unifi Controller.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiSiteClients -SiteName "Contoso" -ActiveOnly $true
```

This example retrieves active clients connected to the Unifi Controller site named "Contoso".

## PARAMETERS

### -ActiveOnly
If true, the Unifi Controller will only list the clients that are currently active.

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
The name of the site in the Unifi Controller to retrieve clients for.

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
