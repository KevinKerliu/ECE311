# Assign inputs/outputs to actual pins on the FPGA
set_property PACKAGE_PIN M15 [get_ports X[0]] 
set_property PACKAGE_PIN H17 [get_ports X[1]] 
set_property PACKAGE_PIN H18 [get_ports Y[0]]
set_property PACKAGE_PIN H19 [get_ports Y[1]]
set_property PACKAGE_PIN F21 [get_ports S]
set_property PACKAGE_PIN U14 [get_ports Z[0]]
set_property PACKAGE_PIN U19 [get_ports Z[1]]  
 
# Define voltage levels (3.3 for LEDs and 1.8 for Switches)
set_property IOSTANDARD LVCMOS18 [get_ports X[0]] 
set_property IOSTANDARD LVCMOS18 [get_ports X[1]] 
set_property IOSTANDARD LVCMOS18 [get_ports Y[0]] 
set_property IOSTANDARD LVCMOS18 [get_ports Y[1]] 
set_property IOSTANDARD LVCMOS18 [get_ports S] 
set_property IOSTANDARD LVCMOS33 [get_ports Z[0]]
set_property IOSTANDARD LVCMOS33 [get_ports Z[1]]