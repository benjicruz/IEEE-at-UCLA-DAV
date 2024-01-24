module sevenSegDigit_tb(output reg [7:0] result);

	reg [3:0] input1;
	reg switch;

sevenSegDigit UUT( input1, switch, result);

initial begin

for (integer i = 0; i < 10; i = i + 1) begin
		#10;
		switch = 1;
		input1 = i;
		#10;
		switch = 0;
	end
	$stop;
	end
	
endmodule