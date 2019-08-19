---
external help file: Unifi-PS-help.xml
Module Name: unifi-ps
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Connect-UnifiController.md
schema: 2.0.0
---

# Connect-UnifiController

## SYNOPSIS
Connect to a Unifi Controller.

## SYNTAX

```
Connect-UnifiController [-Credential] <PSCredential> [<CommonParameters>]
```

## DESCRIPTION
The **Connect-UnifiController** function connects to the Unifi Controller, specified with Set-UnifiAPIConfig, with the given credentials.

## EXAMPLES

### Example 1
```powershell
PS C:\> Set-UnifiAPIConfig -BaseUri unifi.contoso.com
PS C:\> Connect-UnifiController -Credential (Get-Credential)
```

This example configures the connection with Set-UnifiAPIConfig, then connects to the BaseUri configured.

## PARAMETERS

### -Credential
PSCredential Object containing the username and password used to connect to the Unifi Controller.

```yaml
Type: PSCredential
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
