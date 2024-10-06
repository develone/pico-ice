


`timescale 1ns/10ps

module jpeg (
    clk,
		l_s,
    r_s,
		s_s,
		e_o_s,
		f_i_s,
 		res_s
);


input clk;
input signed [15:0] l_s;
input signed [15:0] r_s;
input signed [15:0] s_s;
output signed [15:0] res_s;
reg signed [15:0] res_s;
input e_o_s;
input f_i_s;






always @(posedge clk) begin: JPEG_HDL
    if (e_o_s) begin
        if (f_i_s) begin
            res_s <= (s_s - ($signed(l_s >>> 1) + $signed(r_s >>> 1)));
        end
        else begin
            res_s <= (s_s + ($signed(l_s >>> 1) + $signed(r_s >>> 1)));
        end
    end
    else begin
        if (f_i_s) begin
            res_s <= (s_s + $signed(((l_s + r_s) + 2) >>> 2));
        end
        else begin
            res_s <= (s_s - $signed(((l_s + r_s) + 2) >>> 2));
        end
    end
end

endmodule
