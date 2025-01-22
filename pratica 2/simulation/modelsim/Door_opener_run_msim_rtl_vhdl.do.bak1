transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/silva/OneDrive/Área de Trabalho/UFMG/2023-2/LAB SD/pratica 2/Door_opener.vhd}

vcom -93 -work work {C:/Users/silva/OneDrive/Área de Trabalho/UFMG/2023-2/LAB SD/pratica 2/tb_Door_opener.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Door_opener

add wave *
view structure
view signals
run -all
