module complex_mult_func #(WIDTH = 32)(
	input signed [WIDTH-1:0] A,
	input signed [WIDTH-1:0] B,
	input signed [WIDTH-1:0] W,
	output reg [WIDTH-1:0] A_PLUS_WB,
	output reg [WIDTH-1:0] A_MINUS_WB
);

	reg [(WIDTH/2-1):0] A_real, A_imag;
	reg [(WIDTH/2-1):0] B_real, B_imag;
	reg [(WIDTH/2-1):0] W_real, W_imag;
	
	assign A_real = A[WIDTH-1:16];
	assign A_imag = A[15:0];
	assign B_real = B[WIDTH-1:16];
	assign B_imag = B[15:0];
	assign W_real = W[WIDTH-1:16];
	assign W_imag = W[15:0];
	
	always @(*) begin
		A_PLUS_WB = {A_real + W_real*B_real - W_imag*B_imag, A_imag + W_imag*B_real+W_real*B_imag};
		A_MINUS_WB = {A_real - W_real*B_real + W_imag*B_imag, A_imag - W_imag*B_real-W_real*B_imag};
	end		
endmodule