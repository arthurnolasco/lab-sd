onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_sinalizador/fio_clk
add wave -noupdate /tb_sinalizador/fio_res
add wave -noupdate /tb_sinalizador/fio_e
add wave -noupdate /tb_sinalizador/fio_s
add wave -noupdate /tb_sinalizador/fio_d
add wave -noupdate /tb_sinalizador/fio_7seg
add wave -noupdate -divider subindo
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/RegistradorS/Load
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/RegistradorS/E
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/RegistradorS/Q
add wave -noupdate -divider descendo
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/RegistradorD/Load
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/RegistradorD/E
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/RegistradorD/Q
add wave -noupdate -divider comparador
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/Comp/a
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/Comp/b
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/Comp/maior
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/Comp/menor
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/ViaDados/Comp/igual
add wave -noupdate -divider controladora
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/Controle/SUBINDO
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/Controle/DESCENDO
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/Controle/est_atual
add wave -noupdate /tb_sinalizador/instancia_Sinalizador/Controle/est_futuro
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {199050 ps} {200050 ps}
