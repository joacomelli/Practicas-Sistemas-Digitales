vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Practica04.srcs/sources_1/ip/clk_wiz_0" \
"E:/Facultad/Programas/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/Facultad/Programas/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../Practica04.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.vhdl" \


vlog -work xil_defaultlib \
"glbl.v"

