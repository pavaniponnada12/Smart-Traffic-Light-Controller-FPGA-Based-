@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim tb_traffic_light_controller_behav -key {Behavioral:sim_1:Functional:tb_traffic_light_controller} -tclbatch tb_traffic_light_controller.tcl -view C:/Users/ponnada mani/OneDrive/Desktop/tb_traffic_light_controller_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
