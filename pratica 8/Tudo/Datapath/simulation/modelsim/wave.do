onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_datapath/fio_Cl
add wave -noupdate /tb_datapath/fio_Re
add wave -noupdate -radix unsigned /tb_datapath/fio_e
add wave -noupdate /tb_datapath/fio_l
add wave -noupdate /tb_datapath/fio_a
add wave -noupdate /tb_datapath/fio_ma
add wave -noupdate /tb_datapath/fio_ig
add wave -noupdate /tb_datapath/fio_me
add wave -noupdate /tb_datapath/fio_di
add wave -noupdate /tb_datapath/fio_si
add wave -noupdate /tb_datapath/fio_so
add wave -noupdate /tb_datapath/fio_do
add wave -noupdate /tb_datapath/fio_7seg
add wave -noupdate -divider comparador
add wave -noupdate -radix unsigned /tb_datapath/instancia_Datapath/Comp/a
add wave -noupdate -radix unsigned /tb_datapath/instancia_Datapath/Comp/b
add wave -noupdate /tb_datapath/instancia_Datapath/Comp/maior
add wave -noupdate /tb_datapath/instancia_Datapath/Comp/menor
add wave -noupdate /tb_datapath/instancia_Datapath/Comp/igual
add wave -noupdate -divider registradorMA
add wave -noupdate -radix unsigned /tb_datapath/instancia_Datapath/RegistradorMedia/INPUT
add wave -noupdate -radix unsigned -childformat {{/tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(3) -radix unsigned} {/tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(2) -radix unsigned} {/tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(1) -radix unsigned} {/tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(0) -radix unsigned}} -expand -subitemconfig {/tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(3) {-radix unsigned} /tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(2) {-radix unsigned} /tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(1) {-radix unsigned} /tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT(0) {-radix unsigned}} /tb_datapath/instancia_Datapath/RegistradorMedia/OUTPUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14786 ps} 0}
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
WaveRestoreZoom {0 ps} {165842 ps}
