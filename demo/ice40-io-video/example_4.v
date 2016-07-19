`default_nettype none			//disable implicit definitions by Verilog

module top(				//top module and signals wired to FPGA pins
	CLK100MHz,
	vga_r,
	vga_g,
	vga_b,
	vga_hs,
	vga_vs,
	ps2_clk,
	ps2_data
);

input			CLK100MHz;	// Oscillator input 100Mhz
output  [2:0]   	vga_r;		// VGA Red 3 bit
output  [2:0]   	vga_g;		// VGA Green 3 bit
output  [2:0]   	vga_b;		// VGA Blue 3 bit
output          	vga_hs;		// H-sync pulse 
output          	vga_vs;		// V-sync pulse
input			ps2_clk;	// PS2 clock
input			ps2_data;	// PS2 data


parameter h_pulse   = 96;	//H-SYNC pulse width 96 * 40 ns (25 Mhz) = 3.84 uS
parameter h_bp      = 48;	//H-BP back porch pulse width
parameter h_pixels  = 640;	//H-PIX Number of pixels horisontally
parameter h_fp      = 16;	//H-FP front porch pulse width
parameter h_pol     = 1'b0;	//H-SYNC polarity
parameter h_frame   = 800;	//800 = 96 (H-SYNC) + 48 (H-BP) + 640 (H-PIX) + 16 (H-FP)
parameter v_pulse   = 2;	//V-SYNC pulse width
parameter v_bp      = 33;	//V-BP back porch pulse width
parameter v_pixels  = 480;	//V-PIX Number of pixels vertically
parameter v_fp      = 10;	//V-FP front porch pulse width
parameter v_pol     = 1'b1;	//V-SYNC polarity
parameter v_frame   = 525;	// 525 = 2 (V-SYNC) + 33 (V-BP) + 480 (V-PIX) + 10 (V-FP)

parameter square_size = 10;	//size of the square we will move
parameter init_x = 320;		//initial square position X
parameter init_y = 240;		//initial square position Y

reg	[1:0]		clk_div;	// 2 bit counter
wire			vga_clk;	

assign 	vga_clk 	= clk_div[1];		// 25Mhz clock = 100Mhz divided by 2-bit counter

always @ (posedge CLK100MHz) begin		// 2-bt counter ++ on each positive edge of 100Mhz clock
	clk_div <= clk_div + 2'b1;
end

reg     [2:0]   	vga_r_r;	//VGA color registers R,G,B x 3 bit
reg     [2:0]   	vga_g_r;
reg     [2:0]   	vga_b_r;
reg             	vga_hs_r;	//H-SYNC register
reg             	vga_vs_r;	//V-SYNC register

assign 	vga_r 		= vga_r_r;		//assign the output signals for VGA to the VGA registers
assign 	vga_g 		= vga_g_r;
assign 	vga_b 		= vga_b_r;
assign 	vga_hs 		= vga_hs_r;
assign 	vga_vs 		= vga_vs_r;

reg     [7:0]		timer_t = 8'b0;	// 8 bit timer with 0 initialization
reg             	reset = 1;	
reg     [9:0]   	c_row;		//complete frame register row
reg     [9:0]   	c_col;		//complete frame register colum
reg     [9:0]   	c_hor;		//visible frame register horisontally
reg     [9:0]   	c_ver;		//visible  frame register vertically

reg			disp_en;	//display enable flag

reg	[9:0]		sq_pos_x;	//position of square center X, Y
reg	[9:0]		sq_pos_y;

wire	[9:0]		l_sq_pos_x;	//upper left and down right corners of the square
wire	[9:0]		r_sq_pos_x;
wire	[9:0]		u_sq_pos_y;
wire	[9:0]		d_sq_pos_y;

assign 	l_sq_pos_x 	= sq_pos_x - square_size;
assign 	r_sq_pos_x 	= sq_pos_x + square_size;
assign 	u_sq_pos_y 	= sq_pos_y - square_size;
assign 	d_sq_pos_y 	= sq_pos_y + square_size;

reg	[3:0]		ps2_cntr;		// 4-bit PS2 clock counter
reg	[7:0]		ps2_data_reg;		// 8-bit PS2 data register
reg	[7:0]		ps2_data_reg_prev;	// previous 8-bit PS data register
reg	[7:0]		ps2_data_reg_prev1;	// previous previous 8-bit data register
reg	[10:0]		ps2_dat_r;		// 11-bit complete PS2 frame register

reg	[1:0]		ps2_clk_buf;		// PS2 clock buffer
wire			ps2_clk_pos;		// PS2 positive edge detected signal

reg			u_arr = 0;		//PS2 arrow keys detect flags
reg			l_arr = 0;
reg			d_arr = 0;
reg			r_arr = 0;

reg	[19:0]	sq_figure	[0:19];
wire	[4:0]	sq_fig_x;
wire	[4:0]	sq_fig_y;

assign sq_fig_x = c_col - l_sq_pos_x;	// our figure's x axis when in square boundary
assign sq_fig_y = c_row - u_sq_pos_y;	// our figure's y axis when in square boundary


assign ps2_clk_pos = (ps2_clk_buf == 2'b01);	// edge detector positive edge is when the buffer is '10'

always @ (posedge vga_clk) begin				//25Mhz clock

	if(timer_t > 250) begin					// generate 10 uS RESET signal 
		reset <= 0;
	end
	else begin
		reset <= 1;					//while in reset display is disabled, suare is set to initial position
		timer_t <= timer_t + 1;
		disp_en <= 0;			
		sq_pos_x <= init_x;				
		sq_pos_y <= init_y;
	end
	
	if(reset == 1) begin					//while RESET is high init counters
		sq_figure[0][19:0] <=	20'b00000000000000000000;
		sq_figure[1][19:0] <=	20'b00000001111100000000;
		sq_figure[2][19:0] <=	20'b00000111111111000000;
		sq_figure[3][19:0] <=	20'b00011111111111110000;
		sq_figure[4][19:0] <=	20'b00111111111111111000;
		sq_figure[5][19:0] <=	20'b00111111111111111000;
		sq_figure[6][19:0] <=	20'b01111111111111111100;
		sq_figure[7][19:0] <=	20'b01111111111111111100;
		sq_figure[8][19:0] <=	20'b11111111111111111110;
		sq_figure[9][19:0] <=	20'b11111111111111111110;
		sq_figure[10][19:0] <=	20'b11111111111111111110;
		sq_figure[11][19:0] <=	20'b11111111111111111110;
		sq_figure[12][19:0] <=	20'b11111111111111111110;
		sq_figure[13][19:0] <=	20'b01111111111111111100;
		sq_figure[14][19:0] <=	20'b01111111111111111100;
		sq_figure[15][19:0] <=	20'b00111111111111111000;
		sq_figure[16][19:0] <=	20'b00111111111111111000;
		sq_figure[17][19:0] <=	20'b00011111111111110000;
		sq_figure[18][19:0] <=	20'b00000111111111000000;
		sq_figure[19][19:0] <=	20'b00000001111100000000;
	
		c_hor <= 0;
		c_ver <= 0;
		vga_hs_r <= 1;
		vga_vs_r <= 0;
		c_row <= 0;
		c_col <= 0;
	end
	else begin						// update current beam position
		if(c_hor < h_frame - 1) begin
			c_hor <= c_hor + 1;
		end
		else begin
			c_hor <= 0;
			if(c_ver < v_frame - 1) begin
				c_ver <= c_ver + 1;
			end
			else begin
				c_ver <= 0;
			end
		end
	end
	if(c_hor < h_pixels + h_fp + 1 || c_hor > h_pixels + h_fp + h_pulse) begin	// H-SYNC generator
		vga_hs_r <= ~h_pol;
	end
	else begin
		vga_hs_r <= h_pol;
	end
	if(c_ver < v_pixels + v_fp || c_ver > v_pixels + v_fp + v_pulse) begin		//V-SYNC generator
		vga_vs_r <= ~v_pol;
	end
	else begin
		vga_vs_r <= v_pol;
	end
	if(c_hor < h_pixels) begin		//c_col and c_row counters are updated only in the visible time-frame
		c_col <= c_hor;
	end
	if(c_ver < v_pixels) begin
		c_row <= c_ver;
	end
	if(c_hor < h_pixels && c_ver < v_pixels) begin		//VGA color signals are enabled only in the visible time frame
		disp_en <= 1;
	end
	else begin
		disp_en <= 0;
	end
	
	if(disp_en == 1 && reset == 0) begin
		if(c_row == 0 || c_col == 0 || c_row == v_pixels-1 || c_col == h_pixels-1) begin	//generate red frame with size 640x480
			vga_r_r <= 7;
			vga_g_r <= 0;
			vga_b_r <= 0;
		end
		else if(c_col > l_sq_pos_x && c_col < r_sq_pos_x && c_row > u_sq_pos_y && c_row < d_sq_pos_y) begin	//draw picture from video RAM
			if(sq_figure[sq_fig_y][sq_fig_x] == 1) begin
 			   vga_r_r <= 7;
			   vga_g_r <= 0;
			   vga_b_r <= 7;
			end
			else begin
			   vga_r_r <= 0;
			   vga_g_r <= 0;
			   vga_b_r <= 0;
			end
		end
		else begin			//everything else is black
			vga_r_r <= 0;
			vga_g_r <= 0;
			vga_b_r <= 0;
		end
	end
	else begin			//when display is not enabled everything is black
		vga_r_r <= 0;
		vga_g_r <= 0;
		vga_b_r <= 0;
	end
	
	if(c_row == 1 && c_col == 1) begin		//once per video frame
		if(u_arr) begin
			if (sq_pos_y > square_size) begin
				sq_pos_y <= sq_pos_y - 1;
			end
			else begin
				u_arr <= 0;
				d_arr <= 1;
			end
		end;

		if(d_arr) begin
			if (sq_pos_y < (v_pixels - 1 - square_size)) begin
				sq_pos_y <= sq_pos_y + 1;
			end
			else begin
				d_arr <= 0;
				u_arr <= 1;
			end
		end;

		if(l_arr) begin
			if (sq_pos_x > square_size) begin
				sq_pos_x <= sq_pos_x - 1;
			end
			else begin
				l_arr <= 0;
				r_arr <= 1;
			end
		end;

		if(r_arr) begin
			if (sq_pos_x < (h_pixels - 1 - square_size)) begin
				sq_pos_x <= sq_pos_x + 1;
			end
			else begin
				r_arr <= 0;
				l_arr <= 1;
			end
		end;

	end

	ps2_clk_buf[1:0] <= {ps2_clk_buf[0], ps2_clk};  // shift old value left and get current value of ps2_clk
	if(ps2_clk_pos == 1) begin			// on positive edge
		ps2_cntr <= ps2_cntr + 1;
		if(ps2_cntr == 10) begin		// when we got 10 clocks save the PS2 data to ps2_data_reg, ps2_data_reg_prev and ps2_data_reg_prev1 
			ps2_cntr <= 0;			// so we have last 3 data values captured from PS2 keyboard
			ps2_data_reg[7] <= ps2_dat_r[0];
			ps2_data_reg[6] <= ps2_dat_r[1];
			ps2_data_reg[5] <= ps2_dat_r[2];
			ps2_data_reg[4] <= ps2_dat_r[3];
			ps2_data_reg[3] <= ps2_dat_r[4];
			ps2_data_reg[2] <= ps2_dat_r[5];
			ps2_data_reg[1] <= ps2_dat_r[6];
			ps2_data_reg[0] <= ps2_dat_r[7];
			ps2_data_reg_prev <= ps2_data_reg;
			ps2_data_reg_prev1 <= ps2_data_reg_prev;
		end
		ps2_dat_r <= {ps2_dat_r[9:0], ps2_data};	// data shift left
	end

/*	if(ps2_data_reg_prev1 == 8'he0 && ps2_data_reg_prev == 8'hf0) begin	// 0xE0 0xF0 sequaence means key released
		if(ps2_data_reg == 8'h75) begin
			u_arr <= 0;				//0x75 up key
		end
		else if(ps2_data_reg == 8'h6b) begin
			l_arr <= 0;				//0x6B left key
		end
		else if(ps2_data_reg == 8'h72) begin
			d_arr <= 0;				//0x72 down key
		end
		else if(ps2_data_reg == 8'h74) begin
			r_arr <= 0;				//0x74 right key
		end
	end
*/	if(ps2_data_reg_prev == 8'he0) begin			//0xE0	means key pressed
		if(ps2_data_reg == 8'h75) begin		
			u_arr <= 1;				//0x75 up key	
		end
		else if(ps2_data_reg == 8'h6b) begin		
			l_arr <= 1;				//0x6B left key
		end
		else if(ps2_data_reg == 8'h72) begin
			d_arr <= 1;				//0x72 down key
		end
		else if(ps2_data_reg == 8'h74) begin
			r_arr <= 1;				//0x74 right key
		end
	end	


end

endmodule
