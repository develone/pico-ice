module top (
    input CLK,
    output LED_G,
    input UART_RX,
    output UART_TX
);
reg out1;

  always @(posedge CLK) begin
    if (UART_RX == 1'b0) 
    begin
	out1 <= 1'b0;
    end
    else
	out1 <= 1'b1;
  end
    assign UART_TX = UART_RX;
    
    assign LED_G = out1;
endmodule
