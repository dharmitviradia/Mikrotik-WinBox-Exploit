@ECHO Off
set startTime=%500%
ECHO Starting the IP Scan
FOR /L %%i IN (250,1,250) DO @(
ECHO Pinging IP Range: X.Y.%%i._
FOR /L %%z IN (1,1,255) DO @(
echo Pinging IP: 45.112.%%i.%%z
ping -n 1 -w 500 45.112.%%i.%%z | FIND /i "Reply">>IPScanResults.txt
)
)
ECHO Run Time = %startTime% to %time%>>IPScanResults.txt
ECHO *** IP Scan Complete. ***
ECHO Check the file called IPScanResults.txt to see the results
ECHO Run Time = %startTime% to %time%