# run part inventory for yesterday
# location 1

$EXE = "C:\ASPEN\AspenKubota\bin\AspenKubota.exe"
$DATE = " -Date "
$DATE += [DateTime]::Today.AddDays(-1).ToString("yyyy-MM-dd")
# Auguments for the AspenKubota command
$KARGS = @(
   " -GLNo 01"
   $DATE 
   " -Out C:\Aspen\Kubota\"
   " -Notify Yes")
$KARGS

#run the app
Start-Process $EXE -ArgumentList $KARGS
