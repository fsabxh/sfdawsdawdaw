@echo off
title Serial Checker
mode con: cols=180 lines=62

echo Disk
echo ------------
wmic diskdrive get serialnumber
echo Motherboard
echo ------------
wmic baseboard get serialnumber
echo SMBios
echo ------------
wmic path win32_computersystemproduct get uuid
echo GPU
echo ------------
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo RAM
echo ------------
wmic memorychip get serialnumber
echo Bios
echo ------------
wmic csproduct get uuid
echo CPU
echo ------------
wmic cpu get processorid
echo MacAddress
echo ------------
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
pause
