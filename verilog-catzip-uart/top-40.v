//------------------------------------------------------------------------------
// File: top.vhd
//------------------------------------------------------------------------------
// no timescale needed
`include "uart.v"
`default_nettype	none
module top(
input wire clk,
input wire [uarts - 1:0] rx,
output wire [uarts - 1:0] tx,
output wire [2:0] led
);

parameter [31:0] uarts=2;
//LEDs

  //access to spram
  reg [15:0] ram_addr;
  wire [15:0] ram_data_in;
  wire [15:0] ram_data_out;
  wire ram_wren;

  reg [7:0] state;

  reg [31:0] counter;

parameter IDLE = 0, INIT0 = IDLE+1, INIT1=INIT0+1, INIT2=INIT1+1, INIT3=INIT2+1, RUN = INIT3+1 ;


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
	// NOTE: PLL 12Mhz -> 40Mhz not exact, but 39.75Mhz is "close enough" for monitors tested
	// Fin=12, Fout=39.75 (12*(52/16))
	wire		s_clk;
	wire clk_40mhz, pll_lock;
	SB_PLL40_PAD #(
		.DIVR(4'b0100),		// DIVR =  4
		.DIVF(7'b0011111),	// DIVF = 31
		.DIVQ(3'b100),		// DIVQ =  4
		.FILTER_RANGE(3'b001),
		.FEEDBACK_PATH("SIMPLE"),
		.DELAY_ADJUSTMENT_MODE_FEEDBACK("FIXED"),
		.FDA_FEEDBACK(4'b0000),
		.DELAY_ADJUSTMENT_MODE_RELATIVE("FIXED"),
		.FDA_RELATIVE(4'b0000),
		.SHIFTREG_DIV_MODE(2'b00),
		.PLLOUT_SELECT("GENCLK"),
		.ENABLE_ICEGATE(1'b0)
	)
	pll_inst (
		.PACKAGEPIN(clk),
		.PLLOUTCORE(clk_40mhz),
		.PLLOUTGLOBAL(),
		.EXTFEEDBACK(),
		.DYNAMICDELAY(8'h00),
		.RESETB(1'b1),
		.BYPASS(1'b0),
		.LATCHINPUTVALUE(),
		.LOCK(pll_lock),
		.SDI(),
		.SDO(),
		.SCLK()
	);
assign	s_clk = clk_40mhz;
  always @(posedge s_clk) begin
    if(sig_valid[0] == 1'b1) begin
      if(sig_rx_data[7:0] == 8'h31) begin
        //sig_led[0] <=  ~sig_led[0];
      end
      else if(sig_rx_data[7:0] == 8'h32) begin
        //sig_led[1] <=  ~sig_led[1];
      end
      else if(sig_rx_data[7:0] == 8'h33) begin
        //sig_led[2] <=  ~sig_led[2];
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

  SB_SPRAM256KA spram
  (
    .ADDRESS(ram_addr),
    .DATAIN(ram_data_in),
    .MASKWREN({ram_wren, ram_wren, ram_wren, ram_wren}),
    .WREN(ram_wren),
    .CHIPSELECT(1'b1),
    .CLOCK(s_clk),
    .STANDBY(1'b0),
    .SLEEP(1'b0),
    .POWEROFF(1'b1),
    .DATAOUT(ram_data_out)
  );

  initial begin
      state <= INIT0;
      led <= 3'b000;
      counter <= 0;
  end

  always @(posedge s_clk)
  begin

    ram_wren <= 1'b0;

    case(state)
    IDLE:
    begin
    end
    INIT0:
    begin
      ram_addr <= 16'b00;
      ram_data_in <= 16'b001; //write red
      ram_wren <= 1'b1;
      state <= INIT1;
    end
    INIT1:
    begin
      ram_addr <= 16'b01;
      ram_data_in <= 16'b010; //write green
      ram_wren <= 1'b1;
      state <= INIT2;
    end
    INIT2:
    begin
      ram_addr <= 16'b10;
      ram_data_in <= 16'b100; //write blue
      ram_wren <= 1'b1;
      state <= INIT3;
    end
    INIT3:
    begin
      ram_addr <= 16'b11;
      ram_data_in <= 16'b111; //write white
      ram_wren <= 1'b1;
      state <= RUN;
    end
    RUN:
    begin
      counter <= counter + 1;

      //incrment address every ~sec at 12Mhz
      if(counter == 32'h1000000) begin
        ram_addr[1:0] <= ram_addr[1:0] + 1;
      end
      if(counter == 32'h1000002) begin //must wait two cycles to have data
         led <= ram_data_out[2:0];
         counter <= 0;
      end

    end
    endcase


  end

endmodule
