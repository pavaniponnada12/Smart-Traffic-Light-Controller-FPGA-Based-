@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 897a773b14234a418eb135f140484ead -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_traffic_light_controller_behav xil_defaultlib.tb_traffic_light_controller xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
