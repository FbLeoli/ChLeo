onerror {quit -f}
vlib work
vlog -work work som_sub_unsig.vo
vlog -work work som_sub_unsig.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.som_sub_unsig_vlg_vec_tst
vcd file -direction som_sub_unsig.msim.vcd
vcd add -internal som_sub_unsig_vlg_vec_tst/*
vcd add -internal som_sub_unsig_vlg_vec_tst/i1/*
add wave /*
run -all
