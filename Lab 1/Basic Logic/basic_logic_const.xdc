# Assign inputs/outputs to actual pins on the FPGA
set_property PACKAGE_PIN M15 [get_ports A]
set_property PACKAGE_PIN H17 [get_ports B]
set_property PACKAGE_PIN H18 [get_ports C]
set_property PACKAGE_PIN W22 [get_ports D]

# Define voltage levels (3.3 for LEDs and 1.8 for Switches)
set_property IOSTANDARD LVCMOS18 [get_ports A]
set_property IOSTANDARD LVCMOS18 [get_ports B]
set_property IOSTANDARD LVCMOS18 [get_ports C]
set_property IOSTANDARD LVCMOS33 [get_ports D]