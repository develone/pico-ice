module tb_shadow1;

wire [15:0] d15_o;
reg [15:0] d15_i;
  
 initial
   
    begin
      // Required for EDA Playground
      $dumpfile("dump.vcd"); 
      $dumpvars(0);
		end
 initial
	begin
	# 1000 d15_i = 5120;
	# 2000 d15_i = 9216;
	# 3000 d15_i = 14080;
	end
initial
		begin
			#31000;
			$finish();
 end
 
shadow1 dut(
    d15_o,
    d15_i
);

endmodule
