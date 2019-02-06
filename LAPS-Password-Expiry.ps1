$Date = get-date -Format {dd/MM/yyyy hh:mm:ss}
Get-AdmPwdPassword -ComputerName * | Select-Object ComputerName,ExpirationTimestamp | where ($_.ExpirationTimestamp -le $Date)


