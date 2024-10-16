module top
(
	input wire clk,
	input wire dir,
	inout wire req,
	output wire fin,
	inout wire [7:0] data
);

reg req_last;

reg [7:0] waddr;
reg [7:0] raddr;

wire [7:0] command;

ram command_buffer(.wclk(clk), .rclk(clk), .waddr(waddr), .raddr(raddr), .data_in(data), .write_en(dir && req), .data_out(command));

wire [6:0] iters;

wire [7:0] x[1];
wire [7:0] y[1];

wire coords_fin;
wire coords_inc;

reg coords_inc_last;
reg coords_fin_last;

renderer r(.clk(clk), .rst(dir), .start(!dir && !coords_fin), .x(x[0]), .y(y[0]), .cx(16'h1000), .cy(16'h2000), .zoom(3'd6), .done(coords_inc), .iters(iters)); 
coords #(.POS_COUNT(1)) coords_inst(.clk(clk), .rst(dir), .inc(coords_inc), .x(x), .y(y), .finished(coords_fin));

wire fb_clk;
reg [15:0] fb_addr;
wire fb_we;

wire [15:0] fb_data_out;

reg fb_half_out;

spram_big fb(.clk(fb_clk), .we({ fb_we, fb_we, fb_we, fb_we }), .addr(fb_addr), .data_in({ 8'd128, 8'(iters) + 8'd62 }), .data_out(fb_data_out));

always_ff @(posedge clk) begin
	req_last <= req;
	coords_fin_last <= coords_fin && !dir;
	coords_inc_last <= coords_inc && !dir;
	
	if (dir) begin
		raddr <= 0;
		fb_addr <= 0;
		fb_half_out <= 0;
		
		if (req && req_last) begin
			waddr <= waddr + 1;
		end else begin
			waddr <= 0;
		end
	end else if (coords_fin) begin
		if (!coords_fin_last) begin
			fb_addr <= 0;
			fb_half_out <= 0;
		end else begin
			fb_half_out <= !fb_half_out;
			if (fb_half_out) begin
				fb_addr <= fb_addr + 1;
			end
		end
	end else if (coords_inc_last) begin
		fb_addr <= fb_addr + 1;
	end
end

assign fb_clk = clk;
assign fb_we = coords_inc;
assign fin = !dir && coords_fin && coords_fin_last && fb_addr >= 65531;

assign req = dir ? 'Z : coords_fin_last;
assign data = dir ? 'Z : (fb_half_out ? fb_data_out[15:8] : fb_data_out[7:0]);

endmodule