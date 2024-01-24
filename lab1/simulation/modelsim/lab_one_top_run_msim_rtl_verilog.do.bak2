transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Benji/Desktop/DAV/lab1 {C:/Users/Benji/Desktop/DAV/lab1/lab_one_top.sv}
vlog -sv -work work +incdir+C:/Users/Benji/Desktop/DAV/lab1 {C:/Users/Benji/Desktop/DAV/lab1/lab_one_top_tb.sv}

