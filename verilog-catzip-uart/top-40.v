//------------------------------------------------------------------------------
// File: top.vhd
//------------------------------------------------------------------------------
// no timescale needed

module top(
input wire clk,
input wire [uarts - 1:0] rx,
output wire [uarts - 1:0] tx,
output wire [3:0] led
);

parameter [31:0] uarts=2;
//LEDs



parameter BIT_WIDTH = 11;
parameter BAUD_RATE = 4000000;
parameter CLOCK_FREQ_HZ = 40000000;
reg [23:0] sig_counter;
reg [uarts - 1:0] sig_send;
reg [uarts - 1:0] sig_valid;
reg [8 * (uarts - 1) + 7:0] sig_rx_data;
reg [8 * (uarts - 1) + 7:0] sig_tx_data;  //signal sig_rx_data : std_logic_vector(7 downto 0);
//signal sig_tx_data : std_logic_vector(7 downto 0);
reg [4:0] sig_led;

  assign led = sig_led;
  assign sig_led[4] = sig_counter[(23)];
  //led(3) <= sig_counter(sig_counter'left - 1);
  //led(2) <= sig_counter(sig_counter'left - 2);
  //led(1) <= sig_counter(sig_counter'left - 3);
  //led(0) <= sig_counter(sig_counter'left - 4);
  assign sig_send = sig_valid;
  assign sig_tx_data = sig_rx_data;
  always @(posedge clk) begin
    sig_counter <= sig_counter + (1);
  end
	wire	clk_40mhz, pll_locked;
	wire		s_clk;
	SB_PLL40_CORE #(
		.FEEDBACK_PATH("SIMPLE"),
		.DELAY_ADJUSTMENT_MODE_FEEDBACK("FIXED"),
		.DELAY_ADJUSTMENT_MODE_RELATIVE("FIXED"),
		.PLLOUT_SELECT("GENCLK"),
		.FDA_FEEDBACK(4'b1111),
		.FDA_RELATIVE(4'b1111),
		.DIVR(4'b0100),		// DIVR =  4
		.DIVF(7'b0011111),		// DIVQ =  31
		.DIVQ(3'b100),		// DIVF =  4
		.FILTER_RANGE(3'b010)	// FILTER_RANGE = 2
	) plli (
		.REFERENCECLK     (clk        ),
		.PLLOUTCORE     (clk_40mhz    ),
		.LOCK           (pll_locked  ),
		.BYPASS         (1'b0         ),
		.RESETB         (1'b1         )
	);
       	//SB_GB global_buffer(clk_40mhz, s_clk);
	assign	s_clk = clk_40mhz;
  always @(posedge s_clk) begin
    if(sig_valid[0] == 1'b1) begin
      if(sig_rx_data[7:0] == 8'h31) begin
        sig_led[0] <=  ~sig_led[0];
      end
      else if(sig_rx_data[7:0] == 8'h32) begin
        sig_led[1] <=  ~sig_led[1];
      end
      else if(sig_rx_data[7:0] == 8'h33) begin
        sig_led[2] <=  ~sig_led[2];
      end
      else if(sig_rx_data[7:0] == 8'h34) begin
        sig_led[3] <=  ~sig_led[3];
      end
    end
  end

  genvar i;
  generate for (i=0; i <= uarts - 1; i = i + 1) begin: gen_loop
      uart #(
          .BIT_WIDTH(BIT_WIDTH),
      .BAUD_RATE(BAUD_RATE),
      .CLOCK_FREQ_HZ(CLOCK_FREQ_HZ))
    uart_inst(
          .clk(s_clk),
      .rx(rx[i]),
      .tx(tx[i]),
      .send(sig_send[i]),
      .valid(sig_valid[i]),
      .rx_data(sig_rx_data[7 + 8 * i -: 7 + 1]),
      .tx_data(sig_tx_data[7 + 8 * i -: 7 + 1]));

  end
  endgenerate

endmodule
