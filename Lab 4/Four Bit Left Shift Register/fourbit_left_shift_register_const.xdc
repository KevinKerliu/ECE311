# Assign inputs/outputs to actual pins on the FPGA
set_property PACKAGE_PIN M15 [get_ports CLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {CLK}]
set_property PACKAGE_PIN F22 [get_ports ParallelIn[0]]
set_property PACKAGE_PIN G22 [get_ports ParallelIn[1]] 
set_property PACKAGE_PIN H22 [get_ports ParallelIn[2]]
set_property PACKAGE_PIN F21 [get_ports ParallelIn[3]]  
set_property PACKAGE_PIN H19 [get_ports ShiftIn]  
set_property PACKAGE_PIN H18 [get_ports ShiftEn]  
set_property PACKAGE_PIN H17 [get_ports Load]
set_property PACKAGE_PIN T22 [get_ports RegContent[0]]  
set_property PACKAGE_PIN T21 [get_ports RegContent[1]]  
set_property PACKAGE_PIN U22 [get_ports RegContent[2]]  
set_property PACKAGE_PIN U21 [get_ports RegContent[3]]
set_property PACKAGE_PIN W22 [get_ports ShiftOut]  

# Define voltage levels (3.3 for LEDs and 1.8 for Switches)
set_property IOSTANDARD LVCMOS18 [get_ports CLK] 
set_property IOSTANDARD LVCMOS18 [get_ports ParallelIn[0]]
set_property IOSTANDARD LVCMOS18 [get_ports ParallelIn[1]]
set_property IOSTANDARD LVCMOS18 [get_ports ParallelIn[2]]
set_property IOSTANDARD LVCMOS18 [get_ports ParallelIn[3]] 
set_property IOSTANDARD LVCMOS18 [get_ports ShiftIn] 
set_property IOSTANDARD LVCMOS18 [get_ports ShiftEn]
set_property IOSTANDARD LVCMOS18 [get_ports Load] 
set_property IOSTANDARD LVCMOS33 [get_ports RegContent[0]] 
set_property IOSTANDARD LVCMOS33 [get_ports RegContent[1]]
set_property IOSTANDARD LVCMOS33 [get_ports RegContent[2]]
set_property IOSTANDARD LVCMOS33 [get_ports RegContent[3]]
set_property IOSTANDARD LVCMOS33 [get_ports ShiftOut]