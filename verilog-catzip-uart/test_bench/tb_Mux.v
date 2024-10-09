module tb_Mux;

wire [7:0] z;
reg [7:0] a;
reg [7:0] b;
reg sel;

 initial
   
    begin
      // Required for EDA Playground
      $dumpfile("dump.vcd"); 
      $dumpvars(0);
		end
 initial
	begin
	# 1000 a = 120;
	# 2000 b = 216;
	# 3000 sel = 1;
	# 4000 sel = 0;
	# 5000 a = 200;
	# 6000 b = 254;
	
	end
initial
		begin
			#31000;
			$finish();
 end

Mux dut(
    z,
    a,
    b,
    sel
);

endmodule
