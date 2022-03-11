#COIN IN
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { COIN_IN[0] }];
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { COIN_IN[1] }];
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { COIN_IN[2] }];
#CLK,RST
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK }];
create_clock -add -name sys_clk -period 10.00 [get_ports CLK];#probar 
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { RST }];

set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { RST_cont }];
##SALIDAS
#DISPLAY

set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[6] }];
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[5] }];
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[4] }];
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[3] }];
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[2] }];
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[1] }];
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { COIN_OUT[0] }];

#LATA
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports {LED_LATA}];
#EMPTY
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED_EMPTY }];