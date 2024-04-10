module fft_tb();
	reg [31:0] At = 32'b00000001001011000000000010010110;
	reg [31:0] Bt = 32'b00000010101010001111110011100000;
	reg [31:0] Wt = 32'b00000000110010000000001000011100;
	reg [31:0] AWB1;
	reg [31:0] AWB2;
	
	fft fft_test (At, Bt, Wt, AWB1, AWB2);
	always @(*) begin
	end
	
endmodule