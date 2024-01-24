transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Benji/Downloads {C:/Users/Benji/Downloads/sevenSegDigit.sv}
vlog -sv -work work +incdir+C:/Users/Benji/Desktop/DAV/lab1/output_files {C:/Users/Benji/Desktop/DAV/lab1/output_files/sevenSegDigit_tb.sv}

