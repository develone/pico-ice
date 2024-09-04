`include "UART_TX.v"
`include "UART_RX.v"

module top (
    input CLK,
    output LED_G,
    input UART_RX,
    output UART_TX
);
reg out1;

parameter c_CLKS_PER_BIT    = 104;
reg r_TX_DV = 0;
reg [7:0] r_TX_Byte = 0;
wire [7:0] w_RX_Byte;
reg [7:0] r_RX_Byte;
UART_RX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_RX_Inst
    (.i_Clock(CLK),
     .i_RX_Serial(UART_RX),
     .o_RX_DV(w_RX_DV),
     .o_RX_Byte(w_RX_Byte)
    );

UART_TX #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) UART_TX_Inst
    (.i_Clock(CLK),
     .i_TX_DV(r_TX_DV),
     .i_TX_Byte(r_TX_Byte)
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
endmodule
