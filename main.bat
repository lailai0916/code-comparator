@echo off
setlocal enabledelayedexpansion
set num=0
set inFile=data\data.in
set ansFile=data\data.ans
set outFile=data\data.out

if not exist data (
    mkdir data
)

:loop
	set /a num+=1
	gen.exe > %inFile%
	std.exe < %inFile% > %ansFile%
	sol.exe < %inFile% > %outFile%
	fc %outFile% %ansFile% > nul 2>&1 || (
		powershell -command "Write-Host '>>> Failure #!num!' -f Red"
		powershell -command "Write-Host '>>> data.in' -f Yellow"
		type %inFile%
		powershell -command "Write-Host '>>> data.ans' -f Yellow"
		type %ansFile%
		powershell -command "Write-Host '>>> data.out' -f Yellow"
		type %outFile%
		goto end
	)
	powershell -command "Write-Host '>>> Success #!num!' -f Green"
	goto loop

:end
pause > nul
