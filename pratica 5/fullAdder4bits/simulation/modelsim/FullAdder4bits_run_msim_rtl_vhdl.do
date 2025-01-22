transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {B:/UFMG/2023-2/LAB SD/pratica 5/fullAdder4bits/FullAdder/fulladder.vhd}
vcom -93 -work work {B:/UFMG/2023-2/LAB SD/pratica 5/fullAdder4bits/FullAdder4bits.vhd}

vcom -93 -work work {B:/UFMG/2023-2/LAB SD/pratica 5/fullAdder4bits/tb_FullAdder4bits.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_fullAdder4bits

add wave *
view structure
view signals
run 150 ns
