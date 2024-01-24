module buzzfreq(input clk, input rst, output bf);

	clock_divider freqbuzz(clk, 440, rst, bf);

endmodule