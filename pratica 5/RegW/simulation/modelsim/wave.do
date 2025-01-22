onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Clock
add wave -noupdate /tb_regw/fio_Cl
add wave -noupdate -divider Load
add wave -noupdate /tb_regw/fio_L
add wave -noupdate -divider Reset
add wave -noupdate /tb_regw/fio_R
add wave -noupdate -divider Entrada
add wave -noupdate -color Yellow -radix hexadecimal -expand -subitemconfig {/tb_regw/fio_E(3) {-color Yellow} /tb_regw/fio_E(2) {-color Yellow} /tb_regw/fio_E(1) {-color Yellow} /tb_regw/fio_E(0) {-color Yellow}} /tb_regw/fio_E
add wave -noupdate -divider Saida
add wave -noupdate -color Blue -radix hexadecimal -expand -subitemconfig {/tb_regw/fio_Q(3) {-color Blue} /tb_regw/fio_Q(2) {-color Blue} /tb_regw/fio_Q(1) {-color Blue} /tb_regw/fio_Q(0) {-color Blue}} /tb_regw/fio_Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {299117 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {315 ns}
