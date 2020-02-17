onerror {quit -f}
vlib work
vlog -work work comp8.vo
vlog -work work comp8.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.comp8_vlg_vec_tst
vcd file -direction comp8.msim.vcd
vcd add -internal comp8_vlg_vec_tst/*
vcd add -internal comp8_vlg_vec_tst/i1/*
add wave /*
run -all
