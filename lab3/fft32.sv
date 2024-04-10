module fft32 #(WIDTH = 32)(
	input signed [WIDTH-1:0] in0,
	input signed [WIDTH-1:0] in1,
	input signed [WIDTH-1:0] in2,
	input signed [WIDTH-1:0] in3,
	input clk, 
	input rst, 
	input start, 
	output reg [WIDTH-1:0] A_PLUS_WB,
	output reg [WIDTH-1:0] A_MINUS_WB
);
endmodule