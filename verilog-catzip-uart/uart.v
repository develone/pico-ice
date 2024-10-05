// no timescale needed

module uart(
input wire clk,
input wire rx,
output reg tx,
input wire send,
output reg valid,
output reg [7:0] rx_data,
input wire [7:0] tx_data
);

parameter [31:0] BIT_WIDTH=12;
parameter [31:0] BAUD_RATE=9600;
parameter [31:0] CLOCK_FREQ_HZ=12000000;



parameter HALF_PERIOD = CLOCK_FREQ_HZ / (2 * BAUD_RATE);
parameter cbarrel = 10'b0000000001;
reg [7:0] sig_rx_buf;
reg [7:0] sig_tx_buf;
reg [BIT_WIDTH - 1:0] sig_rx_cnt;  //integer range 0 to 2*HALF_PERIOD;
reg [BIT_WIDTH - 1:0] sig_tx_cnt;  //integer range 0 to 2*HALF_PERIOD;
//signal sig_rx_bit	: integer range 0 to 9;
//signal sig_tx_bit	: integer range 0 to 9;
reg [9:0] sig_rx_bit;
reg [9:0] sig_tx_bit;
parameter [0:0]
  idle = 0,
  work = 1;

reg rxstate;
reg txstate;

  always @(posedge clk) begin
    case(rxstate)
    idle : begin
      valid <= 1'b0;
      sig_rx_cnt <= HALF_PERIOD;
      sig_rx_bit <= cbarrel;
      //0;
      if(rx == 1'b0) begin
        rxstate <= work;
      end
    end
    work : begin
      if(sig_rx_cnt == (2 * HALF_PERIOD)) begin
        sig_rx_cnt <= {((BIT_WIDTH - 1)-(0)+1){1'b0}};
        sig_rx_bit[9:1] <= sig_rx_bit[8:0];
        //sig_rx_bit + 1;
        if(sig_rx_bit[9] == 1'b1) begin
          valid <= 1'b1;
          rxstate <= idle;
          rx_data <= sig_rx_buf;
        end
        else begin
          sig_rx_buf[6:0] <= sig_rx_buf[7:1];
          sig_rx_buf[7] <= rx;
        end
      end
      else begin
        sig_rx_cnt <= sig_rx_cnt + 1;
      end
    end
    default : begin
    end
    endcase
  end

  always @(posedge clk) begin
    case(txstate)
    idle : begin
      tx <= 1'b1;
      sig_tx_cnt <= HALF_PERIOD;
      sig_tx_bit <= cbarrel;
      //0;
      sig_tx_buf <= tx_data;
      if(send == 1'b1) begin
        tx <= 1'b0;
        txstate <= work;
      end
    end
    work : begin
      if(sig_tx_cnt == (2 * HALF_PERIOD)) begin
        sig_tx_cnt <= {((BIT_WIDTH - 1)-(0)+1){1'b0}};
        sig_tx_bit[9:1] <= sig_tx_bit[8:0];
        //sig_tx_bit + 1;
        if(sig_tx_bit[9] == 1'b1) begin
          txstate <= idle;
          //tx_data <= sig_rx_buf;
        end
        else begin
          //sig_tx_buf(7 downto 1) <= sig_tx_buf(6 downto 0);
          sig_tx_buf[6:0] <= sig_tx_buf[7:1];
          tx <= sig_tx_buf[0];
        end
      end
      else begin
        sig_tx_cnt <= sig_tx_cnt + 1;
      end
    end
    default : begin
    end
    endcase
  end


endmodule
