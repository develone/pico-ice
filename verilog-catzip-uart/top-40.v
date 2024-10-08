//------------------------------------------------------------------------------
// File: top.vhd
//------------------------------------------------------------------------------
// no timescale needed
`include "uart.v"
`include "jpeg.v"
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
reg [7:0] sig_rx0_data;
reg [7:0] sig_tx0_data;  //signal sig_rx_data : std_logic_vector(7 downto 0);

reg [7:0] sig_rx1_data;
reg [7:0] sig_tx1_data;
//signal sig_tx_data : std_logic_vector(7 downto 0);
reg [4:0] sig_led;
reg signed [15:0] l0_s [3:0];
reg signed [15:0] l1_s [3:0];
reg signed [15:0] l2_s [3:0];
reg signed [15:0] l3_s [3:0];

reg signed [15:0] r0_s [3:0];
reg signed [15:0] r1_s [3:0];
reg signed [15:0] r2_s [3:0];
reg signed [15:0] r3_s [3:0];

reg signed [15:0] s0_s [3:0];
reg signed [15:0] s1_s [3:0];
reg signed [15:0] s2_s [3:0];
reg signed [15:0] s3_s [3:0];

wire signed [15:0] res0_s [3:0];
wire signed [15:0] res1_s [3:0];
wire signed [15:0] res2_s [3:0];
wire signed [15:0] res3_s [3:0];
reg f0_i_s [3:0];
reg f1_i_s [3:0];
reg f2_i_s [3:0];
reg f3_i_s [3:0];



reg e0_o_s [3:0];
reg e1_o_s [3:0]; 
reg e2_o_s [3:0];
reg e3_o_s [3:0]; 

  assign led = sig_led;
  assign sig_led[4] = sig_counter[(23)];
  //led(3) <= sig_counter(sig_counter'left - 1);
  //led(2) <= sig_counter(sig_counter'left - 2);
  //led(1) <= sig_counter(sig_counter'left - 3);
  //led(0) <= sig_counter(sig_counter'left - 4);
  assign sig_send = sig_valid;
  //assign sig_tx_data = sig_rx_data;
  assign sig_tx0_data = sig_rx0_data;
  assign sig_tx1_data = sig_rx1_data;
   
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
      if(sig_rx0_data[7:0] == 8'h31) begin
        //sig_led[0] <=  ~sig_led[0];
      end
      else if(sig_rx0_data[7:0] == 8'h32) begin
        //sig_led[1] <=  ~sig_led[1];
      end
      else if(sig_rx0_data[7:0] == 8'h33) begin
        //sig_led[2] <=  ~sig_led[2];
      end
      else if(sig_rx0_data[7:0] == 8'h34) begin
        //sig_led[3] <=  ~sig_led[3];
      end
    end
  end

uart #(
          .BIT_WIDTH(BIT_WIDTH),
      .BAUD_RATE(BAUD_RATE),
      .CLOCK_FREQ_HZ(CLOCK_FREQ_HZ))
    uart_inst0(
          .clk(s_clk),
      .rx(rx[0]),
      .tx(tx[0]),
      .send(sig_send[0]),
      .valid(sig_valid[0]),
      .rx_data(sig_rx0_data),
      .tx_data(sig_tx0_data)
    );

uart #(
          .BIT_WIDTH(BIT_WIDTH),
      .BAUD_RATE(BAUD_RATE),
      .CLOCK_FREQ_HZ(CLOCK_FREQ_HZ))
    uart_inst1(
          .clk(s_clk),
      .rx(rx[1]),
      .tx(tx[1]),
      .send(sig_send[1]),
      .valid(sig_valid[1]),
      .rx_data(sig_rx1_data),
      .tx_data(sig_tx1_data)
    );

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
jpeg jpeg0(
    .clk(s_clk),
		.l_s(l0_s[0]),
		.r_s(r0_s[0]),
		.s_s(s0_s[0]),
		.e_o_s(e0_o_s[0]),
		.f_i_s(f0_i_s[0]),
		.res_s(res0_s[0])
  
); 

jpeg jpeg1(
    .clk(s_clk),
		.l_s(l1_s[1]),
		.r_s(r1_s[1]),
		.s_s(s1_s[0]),
		.e_o_s(e1_o_s[1]),
		.f_i_s(f1_i_s[1]),
		.res_s(res1_s[0])
  
); 

jpeg jpeg2(
    .clk(s_clk),
		.l_s(l2_s[2]),
		.r_s(r2_s[2]),
		.s_s(s2_s[2]),
		.e_o_s(e2_o_s[2]),
		.f_i_s(f2_i_s[2]),
		.res_s(res2_s[2])
  
); 

jpeg jpeg3(
    .clk(s_clk),
		.l_s(l3_s[3]),
		.r_s(r3_s[3]),
		.s_s(s3_s[3]),
		.e_o_s(e3_o_s[3]),
		.f_i_s(f3_i_s[3]),
		.res_s(res3_s[3])
  
); 

endmodule
