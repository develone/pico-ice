module spram
(
	input wire clk,
	input wire [3:0] we,
	input wire [13:0] addr,
	input wire [15:0] data_in,
	output wire [15:0] data_out
);

SP256K bb_spram_inst(.AD(addr), .DI(data_in), .MASKWE(we), .WE(|we), .CS('1), .CK(clk), .STDBY('0), .SLEEP('0), .PWROFF_N('1), .DO(data_out));

endmodule

module spram_big
(
	input wire clk,
	input wire [3:0] we,
	input wire [15:0] addr,
	input wire [15:0] data_in,
	output wire [15:0] data_out
);

wire [15:0] datas_out[4];

genvar i;
generate
	for (i = 0; i < 4; i = i + 1) begin
		spram spram_inst(.clk(clk), .we(addr[15:14] == i ? we : '0), .addr(addr[13:0]), .data_in(data_in), .data_out(datas_out[i]));
	end
endgenerate

assign data_out = datas_out[addr[15:14]];

endmodule