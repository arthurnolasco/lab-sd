transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/silva/OneDrive/Área de Trabalho/UFMG/2023-2/LAB SD/pratica 8/Tudo/RegW/RegW.vhd}

vcom -93 -work work {C:/Users/silva/OneDrive/Área de Trabalho/UFMG/2023-2/LAB SD/pratica 8/Tudo/RegW/tb_RegW.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_RegW

add wave *
view structure
view signals
run 300 ns
