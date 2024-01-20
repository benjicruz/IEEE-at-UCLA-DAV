`timescale 1ns/1ns

module lab_one_top_tb(output [9:0] leds);
	
	reg [9:0] switches;
	
	lab_one_top UUT(switches, leds);
	
	integer i;
	
	initial begin
		switches = 10'b0;
		
		for(i = 0; i < 10'b1111111111; i = i + 1) begin
			#10;
			switches = switches + 1;
			
		end
	
		$stop;
	end
endmodule