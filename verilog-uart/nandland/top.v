`include "UART_TX.v"
`include "UART_RX.v"

module top (
    input CLK,
    output LED_R,
    output LED_G,
    output LED_B,
    input UART_RX,
    output UART_TX
);
reg out1;

parameter c_CLKS_PER_BIT    = 217 ;
reg r_TX_DV = 0;
reg [7:0] r_TX_Byte = 0;
wire [7:0] w_RX_Byte;
reg [7:0] r_RX_Byte;

  localparam N = 31;
  
  reg [N:0] counter;
  reg		pps;

	// NOTE: PLL 12Mhz -> 40Mhz not exact, but 39.75Mhz is "close enough" for monitors tested
	// Fin=12, Fout=39.75 (12*(52/16))
	wire		s_clk;
	wire clk_25mhz, pll_lock;
	SB_PLL40_PAD #(
		.DIVR(4'b0000),		// DIVR =  0
		.DIVF(7'b1000010),	// DIVF = 66
		.DIVQ(3'b101),		// DIVQ =  5
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
		.PACKAGEPIN(CLK),
		.PLLOUTCORE(clk_25mhz),
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
assign	s_clk = clk_25mhz;
UART_RX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_Inst
    (.i_Clock(s_clk),
     .i_RX_Serial(UART_RX),
     .o_RX_DV(w_RX_DV),
     .o_RX_Byte(w_RX_Byte)
    );

UART_TX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_Inst
    (.i_Clock(s_clk),
     .i_TX_DV(r_TX_DV),
     .i_TX_Byte(r_TX_Byte),
     .o_TX_Active(w_TX_Active),
     .o_TX_Serial(UART_TX),
     .o_TX_Done()
   );	

  always @(posedge w_RX_DV) begin
    if (w_RX_Byte == 8'h31) 
    begin
	out1 <= 1'b0;
    end
    else
	out1 <= 1'b1;
  end
    assign UART_TX = UART_RX;
    
    assign LED_G = out1;
    assign r_TX_Byte = r_RX_Byte;

  always @(posedge s_clk) begin
    //{pps, counter} <= counter + 32'd172; // Good if CLKRATE =  25MHz
    {pps, counter} <= counter + 32'd172; // Good if CLKRATE =  25MHz
  end
  //6242685.01744
  //1073741823
  //3FFFFFFF
  //01234567890123456789012345678901
  //00111111111111111111111111111111
  assign LED_R = (counter[31:30] == 2'b00);
  
  assign LED_G = 1'b1;
  //assign LED_B = 1'b1;
// Now, we move on to minutes.  We'll count up to 60, and then restart.
// Well, in actuality, though, our counter will go from 0..59 and then
// go back to zero--so it will never actually hit 60.
  reg	[5:0]	secs;
	//initial	mins = 6'h0;
  always @(posedge s_clk)
	if (secs >= 6'd60)
		secs <= 6'h0;
	else if ((pps)&&(secs == 6'd59))
	 	secs <= 0;
	else if (pps)
	 	secs <= secs + 1'b1;

// We'll set the second green LED to blink when this second counter
// is at the top of a minute.  We'll leave it on for a full second,
// and then off for the rest of the minute.
  assign	LED_B = ~(secs == 6'h00);

endmodule
