module renderer
#(
	parameter ITERATIONS = 127,
	parameter OUTPUT_WIDTH = 7,
	localparam ITERATION_WIDTH = $clog2(ITERATIONS + 1),
	localparam SHIFT_AMOUNT = ITERATION_WIDTH - OUTPUT_WIDTH,
	localparam FRACTION_BITS = 13
)(
	input wire clk,
	input wire rst,
	input wire start,
	input wire [7:0] x,
	input wire [7:0] y,
	input wire signed [14:0] cx,
	input wire signed [14:0] cy,
	input wire [2:0] zoom,
	output reg done,
	output reg [OUTPUT_WIDTH-1:0] iters
);

reg signed [15:0] x_reg;
reg signed [15:0] y_reg;
reg signed [15:0] z_real;
reg signed [15:0] z_imag;
reg [ITERATION_WIDTH-1:0] current_iteration;

wire signed [31:0] a_squared_p;
wire signed [31:0] b_squared_p;
wire signed [31:0] ab_p;

wire signed [31:0] apb_squared;
wire signed [31:0] asb_squared;

wire signed [31:0] ab;

always_ff @(posedge clk) begin
	done <= 1'b0;
	
	if (current_iteration == ITERATIONS) begin
		x_reg <= '0;
		y_reg <= '0;
		
		z_real <= '0;
		z_imag <= '0;
		
		current_iteration <= '0;
		iters <= '0;
		
		done <= 1'b1;
	end else if (apb_squared >= 32'h4 << (2 * FRACTION_BITS)) begin
		x_reg <= '0;
		y_reg <= '0;
		
		z_real <= '0;
		z_imag <= '0;
		
		current_iteration <= '0;
		iters <= OUTPUT_WIDTH'(current_iteration >> SHIFT_AMOUNT);
		
		done <= 1'b1;
	end else if (current_iteration == 0) begin
		// store c for later
		x_reg <= cx + (16'(x) << zoom) + 16'hC000;
		y_reg <= cy + (16'(y) << zoom) + 16'hC000;
		
		// add c for first iteration.
		// no need to include z as it is initially (0, 0)
		z_real <= cx + (16'(x) << zoom) + 16'hC000;
		z_imag <= cy + (16'(y) << zoom) + 16'hC000;
		
		if (!start) begin
			current_iteration <= '0;
		end else begin	
			current_iteration <= current_iteration + 1'b1;
		end
	end else begin
		z_real <= asb_squared[15+FRACTION_BITS:FRACTION_BITS] + x_reg;
		z_imag <= ab[15+FRACTION_BITS:FRACTION_BITS] + y_reg;
		current_iteration <= current_iteration + 1'b1;
	end
	
	if (rst) begin
		x_reg <= '0;
		y_reg <= '0;
		z_real <= '0;
		z_imag <= '0;
		current_iteration <= '0;
	end
end

multiplier m1(.clk(clk), .a(z_real), .b(z_real), .product(a_squared_p));
multiplier m2(.clk(clk), .a(z_imag), .b(z_imag), .product(b_squared_p));
multiplier m3(.clk(clk), .a(z_real), .b(z_imag), .product(ab_p));

assign apb_squared = a_squared_p + b_squared_p;
assign asb_squared = a_squared_p - b_squared_p;
assign ab = ab_p << 1'b1;

endmodule