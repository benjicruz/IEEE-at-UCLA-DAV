`timescale 1ns/1ns

module miniALU_tb(output reg [19:0] result);

	reg [3:0] op1;
	reg [3:0] op2;
	
	reg select;
	
	miniALU UUT (op1, op2, select, result);
	
	initial begin
	
	for (integer i = 0; i < 16; i = i + 1) begin
		#10;
		select = 1;
		op1 = i;
		op2 = i;
		#10;
		select = 0;
	end
	
	$stop;
	end
	
endmodule