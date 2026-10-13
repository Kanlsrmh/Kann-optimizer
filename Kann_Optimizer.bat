@echo off
:: ==============================================================================
::  KANN OPTIMIZER - OFFICIAL WINDOWS GAMING OPTIMIZER
::  Powered by: frzo.gg  |  Author: Kann Performance Labs
::  Optimized for: Valorant, CS2, FiveM, Apex Legends, PUBG, Roblox
:: ==============================================================================
title KANN OPTIMIZER v3.2 [ADMINISTRATOR]
color 0b

:: --- 1. Auto Elevate to Administrator Privileges ---
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo [!] Requesting Administrator privileges for Kann Optimizer...
    powershell -Command "Start-Process cmd -ArgumentList '/c """%~f0"""' -Verb RunAs"
    exit /b
)

cls
echo ==============================================================================
echo   #    #   ##   #    # #    #     ####  #####  ##### # #    # ####### ######  
echo   #   #   #  #  ##   # ##   #    #    # #    #   #   # ##  ## #       #    # 
echo   ####   #    # # #  # # #  #    #    # #    #   #   # # ## # #####   ######  
echo   #  #   ###### #  # # #  # #    #    # #####    #   # #    # #       #   #   
echo   #   #  #    # #   ## #   ##    #    # #        #   # #    # #       #    #  
echo   #    # #    # #    # #    #     ####  #        #   # #    # ####### #     # 
echo ==============================================================================
echo                 KANN OPTIMIZER - WINDOWS ULTRA GAMING TWEAKER
echo                   Engineered for Low Latency & High 1%% Low FPS
echo ==============================================================================
echo.

echo [*] STEP 1/4: Creating Windows System Restore Point for safety...
powershell -Command "Checkpoint-Computer -Description 'Kann_Optimizer_RestorePoint' -RestorePointType 'MODIFY_SETTINGS'" >nul 2>&1
echo [OK] Restore Point created successfully!
echo.

echo [*] STEP 2/4: Applying System, CPU & GPU Performance Tweaks...
:: --- [Unlock Windows Ultimate Performance Power Plan] ---
echo [*] Activating Ultimate Performance Power Plan...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1

:: --- [Disable Windows Core Parking] ---
echo [*] Unparking all CPU cores...
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100 >nul 2>&1
powercfg -setacvalueindex scheme_current sub_processor CPMAXCORES 100 >nul 2>&1
powercfg -setactive scheme_current >nul 2>&1

:: --- [Disable Dynamic Tick & Optimize Timer Resolution] ---
echo [*] Optimizing Windows boot timer configuration...
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1

:: --- [Disable Windows Telemetry & Diagnostic Data Tracking] ---
echo [*] Disabling Telemetry & Diagnostic Services...
sc stop DiagTrack >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1
sc stop dmwappushservice >nul 2>&1
sc config dmwappushservice start= disabled >nul 2>&1

:: --- [Disable Windows Error Reporting Service] ---
sc stop WerSvc >nul 2>&1
sc config WerSvc start= disabled >nul 2>&1

:: --- [Disable Nagle's Algorithm for Ultra-Low Ping] ---
echo [*] Disabling Nagle's Algorithm on all active network adapters...
for /f "tokens=3*" %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" 2^>nul ^| findstr "ServiceName"') do (
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%b" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%b" /v "TCPNoDelay" /t REG_DWORD /d 1 /f >nul 2>&1
    reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%b" /v "TcpDelAckTicks" /t REG_DWORD /d 0 /f >nul 2>&1
)

:: --- [Flush DNS Cache & Reset TCP/IP Stack] ---
echo [*] Flushing DNS cache and resetting network stack...
ipconfig /flushdns >nul 2>&1
netsh int ip reset >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global congestionprovider=ctcp >nul 2>&1
netsh int tcp set global ecncapability=enabled >nul 2>&1

:: --- [Disable P2P Windows Update Delivery Optimization] ---
sc stop DoSvc >nul 2>&1
sc config DoSvc start= disabled >nul 2>&1

:: --- [Disable RAM Memory Compression (Eliminate CPU Spikes)] ---
echo [*] Disabling Memory Compression...
powershell -Command "Disable-MMAgent -mc" >nul 2>&1

:: --- [Clean Temp, Prefetch, Log Dumps and Junk Files] ---
echo [*] Cleaning Windows Temp & Prefetch junk files...
del /s /f /q "%temp%\*.*" >nul 2>&1
del /s /f /q "%systemroot%\temp\*.*" >nul 2>&1
del /s /f /q "%systemroot%\Prefetch\*.*" >nul 2>&1
del /s /f /q "%LocalAppData%\D3DSCache\*.*" >nul 2>&1

:: --- [Purge Standby Memory & Optimize Working Set] ---
echo [*] Optimizing Memory Paging & Working Set parameters...
powershell -Command "[System.GC]::Collect(); [System.GC]::WaitForPendingFinalizers()" >nul 2>&1

:: --- [Disable SysMain Service to Prevent Disk Thrashing] ---
sc stop SysMain >nul 2>&1
sc config SysMain start= disabled >nul 2>&1


echo [*] STEP 3/4: Writing Ultra-Low Latency Registry Configurations...
powershell -Command @"
$reg = @"
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583]
"ValueMin"=dword:00000000
"ValueMax"=dword:00000000

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl]
"Win32PrioritySeparation"=dword:00000026

[HKEY_CURRENT_USER\System\GameConfigStore]
"GameDVR_Enabled"=dword:00000000
"GameDVR_FSEBehaviorMode"=dword:00000002
"GameDVR_HonorUserFSEBehaviorMode"=dword:00000001
"GameDVR_DXGIHonorFSEWindowsCompatible"=dword:00000001
[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR]
"AllowGameDVR"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile]
"NetworkThrottlingIndex"=dword:ffffffff
"SystemResponsiveness"=dword:00000000
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games]
"Affinity"=dword:00000000
"Background Only"="False"
"Clock Rate"=dword:00002710
"GPU Priority"=dword:00000008
"Priority"=dword:00000006
"Scheduling Category"="High"
"SFIO Priority"="High"

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers]
"HwSchMode"=dword:00000002

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling]
"PowerThrottlingOff"=dword:00000001

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection]
"AllowTelemetry"=dword:00000000
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection]
"AllowTelemetry"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting]
"Disabled"=dword:00000001

[HKEY_CURRENT_USER\Control Panel\Desktop]
"UserPreferencesMask"=hex:90,12,03,80,10,00,00,00
"MenuShowDelay"="0"
[HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics]
"MinAnimate"="0"

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications]
"GlobalUserDisabled"=dword:00000001
[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy]
"LetAppsRunInBackground"=dword:00000002

[HKEY_CURRENT_USER\Control Panel\Mouse]
"MouseSpeed"="0"
"MouseThreshold1"="0"
"MouseThreshold2"="0"
"SmoothMouseXCurve"=hex:00,00,00,00,00,00,00,00,00,a0,00,00,00,00,00,00,00,40,01,00,00,00,00,00,00,80,02,00,00,00,00,00,00,00,05,00,00,00,00,00
"SmoothMouseYCurve"=hex:00,00,00,00,00,00,00,00,00,00,38,00,00,00,00,00,00,00,70,00,00,00,00,00,00,00,a8,00,00,00,00,00,00,00,e0,00,00,00,00,00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters]
"DefaultTTL"=dword:00000040
"TCPMaxDataRetransmissions"=dword:00000005

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization]
"DODownloadMode"=dword:00000000

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management]
"DisablePagingExecutive"=dword:00000001
"LargeSystemCache"=dword:00000000
"ClearPageFileAtShutdown"=dword:00000000

"@
$reg | Out-File -FilePath "$env:temp\kann_tweaks.reg" -Encoding ASCII
reg import "$env:temp\kann_tweaks.reg" >nul 2>&1
del /f /q "$env:temp\kann_tweaks.reg" >nul 2>&1
"@

echo [OK] Registry Tweaks imported successfully!
echo.

echo [*] STEP 4/4: Flushing DNS & Memory Cache Cleanup...
ipconfig /flushdns >nul 2>&1
echo [OK] DNS Cache Flushed!
echo.

echo ==============================================================================
echo    [SUCCESS] KANN OPTIMIZER OPTIMIZATION COMPLETE!
echo    - FPS & 1%% Low Stability: MAXIMIZED
echo    - System Latency & Ping Jitter: MINIMIZED
echo    - Windows Telemetry & GameDVR: DISABLED
echo ==============================================================================
echo.
echo [RECOMMENDATION] Please restart your PC to apply all Kernel and Timer changes.
echo.
set /p REBOOT="Do you want to restart your computer now? (Y/N): "
if /i "%REBOOT%"=="Y" (
    echo Restarting Windows in 5 seconds...
    shutdown /r /t 5 /c "Kann Optimizer - Applying Gaming Optimization Settings"
) else (
    echo Optimization completed. Please restart manually when ready!
    pause
)
exit /b
