module fft (
	A,
	B,
	W,
	A_WB,
	AWB
);

	parameter WIDTH = 32;
	
	
	input reg [WIDTH - 1: 0] A;
	input reg [WIDTH - 1: 0] B;
	input reg [WIDTH - 1: 0] W;
	output reg [WIDTH - 1: 0] A_WB;
	output reg [WIDTH - 1: 0] AWB;
	
	always_comb begin
		//assign wb_real = (W[WIDTH-1:16] * B[WIDTH-1:16]) - (W[15:0] * B[15:0]);
		// assign wb_imag = (W[WIDTH-1:16] * B[15:0]) + (W[15:0] * B[WIDTH-1:16]);
		A_WB <= {A[WIDTH-1:16] - (W[WIDTH-1:16] * B[WIDTH-1:16]) - (W[15:0] * B[15:0]), A[15:0] - (W[WIDTH-1:16] * B[15:0]) + (W[15:0] * B[WIDTH-1:16])};
		AWB <= {A[WIDTH-1:16] + (W[WIDTH-1:16] * B[WIDTH-1:16]) - (W[15:0] * B[15:0]), A[15:0] + (W[WIDTH-1:16] * B[15:0]) + (W[15:0] * B[WIDTH-1:16])};
	end
	
endmodule