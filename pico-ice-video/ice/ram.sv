module ram
#(
	parameter ADDR_WIDTH = 8,
	parameter DATA_WIDTH = 8
)(
	input wire wclk,
	input wire rclk,
	input wire [ADDR_WIDTH-1:0] waddr,
	input wire [ADDR_WIDTH-1:0] raddr,
	input wire [DATA_WIDTH-1:0] data_in,
	input wire write_en,
	output wire [DATA_WIDTH-1:0] data_out
);

reg [DATA_WIDTH-1:0] data_out_r;

reg [DATA_WIDTH-1:0] mem[(1<<ADDR_WIDTH)-1:0];

always @(posedge wclk) begin
	if (write_en) begin
		mem[waddr] <= data_in;
	end
end

always @(posedge rclk) begin
	data_out_r <= mem[raddr];
end

assign data_out = data_out_r;

endmodule