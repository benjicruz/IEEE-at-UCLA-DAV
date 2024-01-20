transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Benji/Desktop/DAV/lab2 {C:/Users/Benji/Desktop/DAV/lab2/clock_divider.sv}
vlog -sv -work work +incdir+C:/Users/Benji/Desktop/DAV/lab2 {C:/Users/Benji/Desktop/DAV/lab2/clock_divider_tb.sv}

