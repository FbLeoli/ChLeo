vlog -work work C:/Users/Fábio/Downloads/microProjeto/controlador/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.controlador_vlg_vec_tst
onerror {resume}
add wave {controlador_vlg_vec_tst/i1/clk}
add wave {controlador_vlg_vec_tst/i1/outGenerico1}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[15]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[14]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[13]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[12]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[11]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[10]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[9]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[8]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[7]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[6]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[5]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[4]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[3]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[2]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[1]}
add wave {controlador_vlg_vec_tst/i1/outGenerico1[0]}
add wave {controlador_vlg_vec_tst/i1/reset}
add wave {controlador_vlg_vec_tst/i1/RO1_outC}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[7]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[6]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[5]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[4]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[3]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[2]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[1]}
add wave {controlador_vlg_vec_tst/i1/RO1_outC[0]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[7]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[6]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[5]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[4]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[3]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[2]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[1]}
add wave {controlador_vlg_vec_tst/i1/RO2_outC[0]}
run -all
