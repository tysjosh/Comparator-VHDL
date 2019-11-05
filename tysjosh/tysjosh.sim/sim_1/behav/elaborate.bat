@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 88291adf08224677864e0a96a0d0f93e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip -L xpm --snapshot comparator_testbench3_behav xil_defaultlib.comparator_testbench3 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
