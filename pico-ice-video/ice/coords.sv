module coords
#(
	parameter WIDTH = 256,
	parameter HEIGHT = 256,
	parameter POS_COUNT = 4,
	localparam WIDTH_BITS = $clog2(WIDTH),
	localparam HEIGHT_BITS = $clog2(HEIGHT)
)(
	input wire clk,
	input wire rst,
	input wire inc,
	output reg [WIDTH_BITS-1:0] x[POS_COUNT],
	output reg [HEIGHT_BITS-1:0] y[POS_COUNT],
	output wire finished
);

reg [POS_COUNT-1:0] finished_r;

always_ff @(posedge clk) begin
	if (rst) begin
		integer i;
		for (i = 0; i < POS_COUNT; i = i + 1) begin
			x[i] <= WIDTH_BITS'(i);
			y[i] <= 0;
		end
		finished_r <= '1;
	end else if (inc) begin
		integer i;
		for (i = 0; i < POS_COUNT; i = i + 1) begin
			x[i] <= x[i] + POS_COUNT;
			if (32'(x[i]) > (32'(x[i]) + POS_COUNT) % WIDTH) begin
				y[i] <= y[i] + 1;
				if (32'(y[i]) > (32'(y[i]) + 1) % HEIGHT) begin
					finished_r[i] <= 0;
				end
			end
		end
	end
end

assign finished = finished_r == 0;

endmodule