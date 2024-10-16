module multiplier
(
	input wire clk,
	input wire signed [15:0] a,
	input wire signed [15:0] b,
	output wire signed [31:0] product
);

assign product = a * b;

endmodule