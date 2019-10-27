# Assign inputs/outputs to actual pins on the FPGA
set_property PACKAGE_PIN M15 [get_ports X[0]]
set_property PACKAGE_PIN H17 [get_ports X[1]]
set_property PACKAGE_PIN H18 [get_ports X[2]]
set_property PACKAGE_PIN H19 [get_ports G[0]]
set_property PACKAGE_PIN F21 [get_ports G[1]]
set_property PACKAGE_PIN H22 [get_ports G[2]]
set_property PACKAGE_PIN U14 [get_ports Y[0]]
set_property PACKAGE_PIN U19 [get_ports Y[1]]
set_property PACKAGE_PIN W22 [get_ports Y[2]]
set_property PACKAGE_PIN V22 [get_ports Y[3]]
set_property PACKAGE_PIN U21 [get_ports Y[4]]
set_property PACKAGE_PIN U22 [get_ports Y[5]]
set_property PACKAGE_PIN T21 [get_ports Y[6]]
set_property PACKAGE_PIN T22 [get_ports Y[7]]

# Define voltage levels (3.3 for LEDs and 1.8 for Switches)
set_property IOSTANDARD LVCMOS18 [get_ports X[0]]
set_property IOSTANDARD LVCMOS18 [get_ports X[1]]
set_property IOSTANDARD LVCMOS18 [get_ports X[2]]
set_property IOSTANDARD LVCMOS18 [get_ports G[0]]
set_property IOSTANDARD LVCMOS18 [get_ports G[1]]
set_property IOSTANDARD LVCMOS18 [get_ports G[2]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[0]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[1]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[2]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[3]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[4]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[5]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[6]]
set_property IOSTANDARD LVCMOS33 [get_ports Y[7]]