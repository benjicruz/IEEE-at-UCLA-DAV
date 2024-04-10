module complex_mult_func_tb(output reg [31:0] apluswb, output reg [31:0] a_wb);
	reg [31:0] a;
	reg [31:0] b;
	reg [31:0] w;
	
	complex_mult_func testmath(a, b, w, apluswb, a_wb);
	
	initial begin
		a = 32'b00000000100101100000000010010110;
		b = 32'b00000000100101100000000010010110;
		w = 32'b00000000100101100000000010010110;
	end
endmodule