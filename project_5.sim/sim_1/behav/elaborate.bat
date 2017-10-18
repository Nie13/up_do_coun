@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 6bcf2b9a991d4e859eeb085b4698c052 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot up_down_counter_tb_behav xil_defaultlib.up_down_counter_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
