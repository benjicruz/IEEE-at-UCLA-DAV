`timescale 1ns/1ns

module clock_divider_tb(output reg outclk, output reg outclk2);

		reg clock;
		reg [19:0] speed_input;
		reg [19:0] speed_input2;
		reg rst;
		clock_divider testclock(clock, speed_input, rst, outclk);
		clock_divider testclock2(clock, speed_input2, rst, outclk2);
		
		initial begin // we run this block once when execution begins
			clock = 0;    // initialize the clock
			speed_input = 1000000;
			speed_input2 = 500000;
			rst = 1;
			#100000 $stop; // after 10000 time ticks, we end simulation. 
			end
			
	always begin // always w/ no sensitivity only works in simulation

      #10 clock = ~clock; // we toggle the clock every 10 nanoseconds
	                    // this runs in parallel to the initial
                          // block, so it will stop after 10000
                          // nanoseconds
	end

endmodule