onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider clock
add wave -noupdate /tb_flipflopd/fio_Cl
add wave -noupdate -divider entradas
add wave -noupdate /tb_flipflopd/fio_D
add wave -noupdate /tb_flipflopd/fio_Re
add wave -noupdate -divider saidas
add wave -noupdate /tb_flipflopd/fio_Q
add wave -noupdate /tb_flipflopd/fio_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {249221 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {262500 ps}
