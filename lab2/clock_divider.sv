module clock_divider #(BASE_SPEED = 50000000)(
	input clk,
	input reg [19:0]speed,
	input rst,
	output reg outClk
);
	
	reg [31:0] counter = 0;
	reg [31:0] counter_d;
	reg outClk_d;
	
	always_comb begin
		if(rst == 1'b0) begin
			outClk_d = 0;
			counter_d = 0;
		end else
		if(counter < (((BASE_SPEED) / speed) - 1)/2) begin
			outClk_d = 0;
			counter_d = counter + 1;
		end else if(counter >= (((BASE_SPEED)/speed) - 1)/2 && counter != ((BASE_SPEED)/speed) - 1) begin
			outClk_d = 1;
			counter_d = counter + 1;
		end else begin
		//if(counter == ((BASE_SPEED)/speed) - 1) begin
			counter_d = 0;
			outClk_d = 1;
		end  
	end
	
	always @(posedge clk) begin
			outClk <= outClk_d;
			counter <= counter_d;
	end
endmodule