@echo off
setlocal
echo =========================================
echo       Running LogicModule Simulation
echo =========================================

REM --- Kiểm tra iverilog ---
echo Checking for Icarus Verilog...
where iverilog >nul 2>&1
if errorlevel 1 (
    echo ERROR: iverilog not found in PATH.
    echo Please install Icarus Verilog or add it to your PATH.
    pause
    exit /b 1
)

REM --- Biên dịch Verilog ---
echo Compiling Verilog source...
iverilog -o logic_module_tb.vvp -g2012 -Wall -s logic_module_tb logic_module_tb.v logic_module.v
if errorlevel 1 (
    echo ERROR: Compilation failed!
    pause
    exit /b 1
)
echo Compilation successful!

REM --- Chạy mô phỏng ---
echo Running simulation...
vvp logic_module_tb.vvp > simulation.log 2>&1
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
