@echo off
title KANN OPTIMIZER - USER GUIDE & DOCUMENTATION [frzo.gg]
mode con: cols=90 lines=36
color 0b

:MENU
cls
echo ==============================================================================
echo   #    #   ##   #    # #    #     ####  #####  ##### # #    # ####### ######  
echo   #   #   #  #  ##   # ##   #    #    # #    #   #   # ##  ## #       #    # 
echo   ####   #    # # #  # # #  #    #    # #    #   #   # # ## # #####   ######  
echo   #  #   ###### #  # # #  # #    #    # #####    #   # #    # #       #   #   
echo   #   #  #    # #   ## #   ##    #    # #        #   # #    # #       #    #  
echo   #    # #    # #    # #    #     ####  #        #   # #    # ####### #     # 
echo ==============================================================================
echo             KANN OPTIMIZER - INTERACTIVE README & USER MANUAL
echo                 Powered by frzo.gg | Windows Gaming Suite
echo ==============================================================================
echo.
echo  Please select a topic to view:
echo.
echo    [1] Overview & System Architecture
echo    [2] Optimization Modules Breakdown (CPU, GPU, RAM, Network)
echo    [3] How to Run Kann_Optimizer.exe & Kann_Optimizer.bat
echo    [4] How to Bypass SmartScreen ("Windows protected your PC")
echo    [5] How to Restore / Rollback Windows Default Settings
echo    [6] Launch Kann_Optimizer.exe Now
echo    [7] Launch Kann_Optimizer.bat Now
echo    [0] Exit Manual
echo.
echo ==============================================================================
set /p CHOICE="Enter choice [0-7]: "

if "%CHOICE%"=="1" goto OVERVIEW
if "%CHOICE%"=="2" goto MODULES
if "%CHOICE%"=="3" goto HOWTORUN
if "%CHOICE%"=="4" goto SMARTSCREEN
if "%CHOICE%"=="5" goto ROLLBACK
if "%CHOICE%"=="6" goto LAUNCH_EXE
if "%CHOICE%"=="7" goto LAUNCH_BAT
if "%CHOICE%"=="0" exit /b
goto MENU

:OVERVIEW
cls
echo ==============================================================================
echo  TOPIC 1: OVERVIEW & SYSTEM ARCHITECTURE
echo ==============================================================================
echo.
echo  Kann Optimizer is an enterprise-grade Windows gaming optimization suite
echo  engineered by Kann Performance Labs under the frzo.gg eSports brand.
echo.
echo  KEY OBJECTIVES:
echo  - Stabilize 1%% low framerates and eradicate sudden stuttering.
echo  - Eliminate thread scheduling bottlenecks across multi-core processors.
echo  - Minimize peripheral input lag (mouse & keyboard 1:1 raw curves).
echo  - Reduce online multiplayer ping and eliminate hit-registration delay.
echo  - Provide 100%% safe, reversible optimizations with Restore Point backups.
echo.
echo  SUPPORTED OPERATING SYSTEMS:
echo  - Windows 10 (All versions: 20H2, 21H1, 21H2, 22H2)
echo  - Windows 11 (All versions: 21H2, 22H2, 23H2, 24H2)
echo.
echo  SUPPORTED TITLES:
echo  - Valorant, CS2, FiveM (GTA V RP), Apex Legends, PUBG, Roblox, Fortnite.
echo.
echo ==============================================================================
pause
goto MENU

:MODULES
cls
echo ==============================================================================
echo  TOPIC 2: OPTIMIZATION MODULES BREAKDOWN
echo ==============================================================================
echo.
echo  [A] CPU & THREAD ENGINE:
echo  - Ultimate Performance Power Plan: Unlocks maximum unthrottled CPU frequencies.
echo  - CPU Core Unparking: Keeps 100%% of physical and logical cores active.
echo  - Win32PrioritySeparation (0x26): Prioritizes foreground game threads.
echo  - Dynamic Ticks Disabled: Eliminates boot timer micro-jitter.
echo.
echo  [B] GPU & GRAPHICS LATENCY:
echo  - Disable Xbox GameDVR: Stops background shadow recording and hooks.
echo  - MMCSS Tuning: Sets SystemResponsiveness=0 and NetworkThrottlingIndex=0xffffffff.
echo  - Hardware Accelerated GPU Scheduling (HAGS): Direct VRAM access.
echo.
echo  [C] NETWORK & PING REDUCER:
echo  - Disable Nagle's Algorithm: Enforces TCPNoDelay=1 and TcpAckFrequency=1.
echo  - Disable Delivery Optimization: Stops P2P Windows Update upload bandwidth theft.
echo  - Flush DNS & CTCP Congestion: Flushes stale resolver cache.
echo.
echo  [D] MEMORY & STORAGE PURGE:
echo  - RAM Compression Disabled: Prevents CPU decompression micro-freezes.
echo  - Lock Kernel in RAM: Disables Paging Executive for near-zero kernel latency.
echo  - Temporary Junk Purge: Cleans %%TEMP%%, Windows Temp, Prefetch, and Shader Cache.
echo.
echo ==============================================================================
pause
goto MENU

:HOWTORUN
cls
echo ==============================================================================
echo  TOPIC 3: HOW TO RUN KANN OPTIMIZER
echo ==============================================================================
echo.
echo  METHOD A: RUNNING KANN_OPTIMIZER.EXE (NATIVE EXECUTABLE)
echo  1. Double-click "Kann_Optimizer.exe".
echo  2. Click "Yes" on the Windows UAC permission prompt.
echo  3. An elevated console titled [KANN OPTIMIZER PRO v3.2] will appear.
echo  4. The tool executes all optimizations and waits for your keypress.
echo  5. Restart your PC to load the new kernel and power configurations.
echo.
echo  METHOD B: RUNNING KANN_OPTIMIZER.BAT (BATCH SCRIPT)
echo  1. Right-click "Kann_Optimizer.bat" and select "Run as administrator".
echo  2. The script creates a Windows System Restore Point automatically.
echo  3. It applies all tweaks with real-time progress steps.
echo  4. Restart your computer when prompted.
echo.
echo ==============================================================================
pause
goto MENU

:SMARTSCREEN
cls
echo ==============================================================================
echo  TOPIC 4: FIXING WINDOWS SMARTSCREEN & PERMISSIONS
echo ==============================================================================
echo.
echo  QUESTION: Why does Windows say "Windows protected your PC"?
echo.
echo  ANSWER:
echo  Windows SmartScreen automatically triggers this notification for any
echo  custom open-source gaming tool that does not purchase an expensive ($500/year)
echo  commercial enterprise certificate from Microsoft.
echo.
echo  HOW TO PROCEED:
echo  1. On the blue SmartScreen popup, click the text link "More info".
echo  2. An additional button named "Run anyway" will appear.
echo  3. Click "Run anyway".
echo.
echo  Kann Optimizer is 100%% transparent, open-source, contains zero adware,
echo  and creates an automated system restore point for complete peace of mind.
echo.
echo ==============================================================================
pause
goto MENU

:ROLLBACK
cls
echo ==============================================================================
echo  TOPIC 5: HOW TO RESTORE WINDOWS STOCK SETTINGS
echo ==============================================================================
echo.
echo  Kann Optimizer includes a 100%% safe rollback system:
echo.
echo  OPTION 1 (FAST ROLLBACK SCRIPT):
echo  - Right-click "Kann_Restore_Defaults.bat" and select "Run as administrator".
echo  - Reverts power plan back to Balanced.
echo  - Restores dynamic tick timers and re-enables all background services.
echo  - Resets TCP/IP stack to factory defaults.
echo.
echo  OPTION 2 (WINDOWS SYSTEM RESTORE):
echo  - Press Windows + S, type "Create a restore point" and press Enter.
echo  - Click "System Restore...".
echo  - Select the point named "Kann_Optimizer_RestorePoint".
echo  - Click Next and Finish to rollback your system state.
echo.
echo ==============================================================================
pause
goto MENU

:LAUNCH_EXE
cls
echo [*] Checking for Kann_Optimizer.exe in current folder...
if exist "%~dp0Kann_Optimizer.exe" (
    echo [*] Launching Kann_Optimizer.exe...
    start "" "%~dp0Kann_Optimizer.exe"
    exit /b
) else (
    echo [ERROR] Kann_Optimizer.exe was not found in this folder.
    echo Please make sure Kann_Optimizer.exe is extracted in the same folder.
    echo.
    pause
    goto MENU
)

:LAUNCH_BAT
cls
echo [*] Checking for Kann_Optimizer.bat in current folder...
if exist "%~dp0Kann_Optimizer.bat" (
    echo [*] Launching Kann_Optimizer.bat with Administrator elevation...
    powershell -Command "Start-Process cmd -ArgumentList '/c """%~dp0Kann_Optimizer.bat"""' -Verb RunAs"
    exit /b
) else (
    echo [ERROR] Kann_Optimizer.bat was not found in this folder.
    echo.
    pause
    goto MENU
)
