module top(
	CLK,
	BUT1,
	BUT2,
	LED1,
	LED2
);

input			CLK;
input			BUT1;
input			BUT2;
output			LED1;
output			LED2;

reg			BUT1_r;
reg			BUT2_r;
reg			LED1_m0_r;
reg			LED2_m0_r;
reg			LED1_m1_r;
reg			LED2_m1_r;
reg		[14:0]	cntr;
reg		[14:0]	rst_cnt;
reg			mode=1;
reg		[11:0]	clk_div;

wire			clk_24KHz;
wire			reset;

assign reset = rst_cnt[14];
assign LED1 = mode ? LED1_m1_r : LED1_m0_r;
assign LED2 = mode ? LED2_m1_r : LED2_m0_r;
assign clk_24KHz = clk_div[11];

always @ (posedge CLK) begin
	clk_div <= clk_div + 12'b1;
end

always @ (posedge clk_24KHz) begin
	BUT1_r <= BUT1;
	BUT2_r <= BUT2;
	cntr <= cntr + 15'd1;
	
	if(reset == 1'b0) begin
		rst_cnt <= rst_cnt + 28'd1;
	end
	if(BUT1_r == 1'b0 && BUT2_r == 1'b0 && reset == 1'b1) begin
		mode <= mode ^ 1'b1;
		rst_cnt <= 28'd0;
	end
	
	LED1_m0_r <= ~BUT1_r;
	LED2_m0_r <= ~BUT2_r;
	
	if(cntr == 15'd12207) begin
		LED1_m1_r <=  1'b0;
		LED2_m1_r <=  1'b1;
	end
	if(cntr > 15'd24414) begin
		cntr <= 15'd0;
		LED1_m1_r <=  1'b1;
		LED2_m1_r <=  1'b0;
	end
end

endmodule
