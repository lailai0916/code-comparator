@echo off
setlocal enabledelayedexpansion
set num=0

:loop
	set /a num+=1
	gen.exe > in
	std.exe < in > ans
	sol.exe < in > out
	fc out ans > nul 2>&1 || (
		echo Failure #%num%
		fc out ans
		goto end
	)
	echo Success #%num%
	goto loop

:end
pause > nul
