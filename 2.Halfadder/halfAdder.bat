@echo off
setlocal
echo =========================================
echo       Running Half Adder Simulation
echo =========================================

REM --- Kiểm tra iverilog ---
where iverilog >nul 2>&1
if errorlevel 1 (
    echo ERROR: iverilog not found in PATH.
    echo Please install Icarus Verilog and add it to PATH.
    pause
    exit /b 1
)

REM --- Biên dịch ---
echo Compiling Verilog source...
iverilog -o halfAdder_tb.vvp -g2012 -Wall -s halfAdder_tb halfAdder_tb.v halfAdder.v
if errorlevel 1 (
    echo ERROR: Compilation failed!
    pause
    exit /b 1
)
echo Compilation successful!

REM --- Mô phỏng ---
echo Running simulation...
vvp halfAdder_tb.vvp > simulation.log 2>&1
if errorlevel 1 (
    echo ERROR: Simulation failed!
    echo -------- simulation.log --------
    type simulation.log
    echo --------------------------------
    pause
    exit /b 1
)

echo Simulation finished successfully.
echo.
echo ====== Test Results ======
type simulation.log
echo ==========================

pause
endlocal
