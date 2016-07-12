module top(						//top module
	CLK,
	BUT1,
	BUT2,
	LED1,
	LED2
);

input			CLK;				//input 100Mhz clock
input			BUT1;				//input signal from button 1
input			BUT2;				//input signal from button 2
output			LED1;				//output signal to LED1
output			LED2;				//output signal to LED2

reg			BUT1_r;				//register to keep button 1 state
reg			BUT2_r;				//register to keep button 2 state
reg			LED1_m0_r;			//LED1 value in mode = 0
reg			LED2_m0_r;			//LED2 value in mode = 0
reg			LED1_m1_r;			//LED1 value in mode = 1
reg			LED2_m1_r;			//LED2 value in mode = 1
reg		[14:0]	cntr;				// 15 bit counter for LED blink timing
reg		[14:0]	rst_cnt=0;			// 15 bit counter for button debounce
reg			mode=1;				//mode set to 1 initially
reg		[11:0]	clk_div;			// 12 bit counter

wire			clk_24KHz;			//signal with approx 24KHz clock
wire			reset;				//used for button debounce

assign reset = rst_cnt[14];				//reset signal is connected to bit15 of rst_cnt
assign LED1 = mode ? LED1_m1_r : LED1_m0_r;		//multiplexer controlled by mode which connects LED1_m1_r or LED1_m0_r to LED1
assign LED2 = mode ? LED2_m1_r : LED2_m0_r;		//multiplexer controlled by mode which connects LED2_m1_r or LED2_m0_r to LED2
assign clk_24KHz = clk_div[11];				//100 000 000 Hz / 4096 = 24414 Hz

always @ (posedge CLK) begin				//on each positive edge of 100Mhz clock increment clk_div
	clk_div <= clk_div + 12'b1;
end

always @ (posedge clk_24KHz) begin			//on each positive edge of 24414Hz clock
	BUT1_r <= BUT1;					//capture button 1 state to BUT1_r
	BUT2_r <= BUT2;					//capture button 2 state to BUT2_r
	cntr <= cntr + 15'd1;				//increment cntr LED blink counter
	
	if(reset == 1'b0) begin				//if bit15 of rst_cnt is not set yet
		rst_cnt <= rst_cnt + 15'd1;		//increment the counter rst_cnt
	end

	if(BUT1_r == 1'b0 && BUT2_r == 1'b0 && reset == 1'b1) begin	//if bit15 of rst_cnt is set and both buttons are pressed
		mode <= mode ^ 1'b1;					//toggle the mode
		rst_cnt <= 15'd0;					//clear debounce rst_cnt
	end
	
	LED1_m0_r <= ~BUT1_r;				//copy inversed state of button 1 to LED1_m0_r
	LED2_m0_r <= ~BUT2_r;				//copy inversed state of button 2 to LED2_m0_r
	
	if(cntr == 15'd12207) begin			//when 0.5s pass
		LED1_m1_r <=  1'b0;			//reset LED1_m1_r
		LED2_m1_r <=  1'b1;			//set LED2_m1_r
	end
	if(cntr > 15'd24414) begin			//when 1.0s pass
		cntr <= 15'd0;				//clear cntr
		LED1_m1_r <=  1'b1;			//set LED1_m1_r
		LED2_m1_r <=  1'b0;			//reset LED2_m1_r
	end
end

endmodule
