---
external help file: Unifi-PS-help.xml
Module Name: Unifi-PS
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Get-UnifiController.md
schema: 2.0.0
---

# Get-UnifiController

## SYNOPSIS
Retrieves server details from the Unifi Controller.

## SYNTAX

```
Get-UnifiController [-BaseUri] <String> [-Port] <String> [-Protocol] <String>
 [[-SkipCertificateCheck] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
The Get-UnifiController function retrieves server details from the Unifi Controller. This function does not require an existing logged in connection to a Unifi Controller.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UnifiController -BaseUri unifi.contoso.com -Port 8443 -Protocol "https" -SkipCertificateCheck $true
```

This example queries the Unifi Controller to retrieve the server details.

## PARAMETERS

### -BaseUri
The address of the Unifi Controller, not including protocol or port.

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

### -Port
TCP port used to connect to the Unifi Controller.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
TCP protocol used to connect to the Unifi Controller.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkipCertificateCheck
If true, skips the certificate check when sending requests to the REST API, needed if using a self-signed certificate on Unifi Controller.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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
