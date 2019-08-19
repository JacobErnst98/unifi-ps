---
external help file: Unifi-PS-help.xml
Module Name: unifi-ps
online version: https://github.com/derpenstiltskin/unifi-ps/blob/master/docs/Set-UnifiAPIConfig.md
schema: 2.0.0
---

# Set-UnifiAPIConfig

## SYNOPSIS
Sets the Unifi API configuration for connecting to a Unifi Controller.

## SYNTAX

```
Set-UnifiAPIConfig [[-BaseUri] <String>] [[-Port] <String>] [[-Protocol] <String>]
 [[-SkipCertificateCheck] <Boolean>] [[-Session] <PSObject>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-UnifiAPIConfig** function sets the Unifi API configuration items for connecting to a Unifi Controller. When the module loads, default values for Port (8443), Protocol (https), and SkipCertificateCheck (false) are set.

## EXAMPLES

### Example 1
```powershell
PS C:\> Set-UnifiAPIConfig -BaseUri "unifi.contoso.com" -Port "8443" -Protocol "https" -SkipCertificateCheck $true
```

This example sets the API configuration values for BaseUri, Port, Protocol, and SkipCertificateCheck.

## PARAMETERS

### -BaseUri
The address of the Unifi Controller, not including protocol or port.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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

Required: False
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

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Session
Web Request session created when connecting to the Unifi Controller.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
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
