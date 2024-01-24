module lab_one_top(input [9:0] switches,
	output reg [7:0] digit1,
	output reg [7:0] digit2,
	output reg [7:0] digit3,
	output reg [7:0] digit4,
	output reg [7:0] digit5,
	output reg [7:0] digit6
	);
	reg [19:0] ALUOutput;
	miniALU newALU(switches [9:6], switches [5:2], switches [1], ALUOutput);
	sevenSegDisplay display(ALUOutput, switches [0], digit1, digit2, digit3, digit4, digit5, digit6); 

endmodule