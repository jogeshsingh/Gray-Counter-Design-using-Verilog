////////design file = gray_bin **********////

module gray_bin 
#(parameter WIDTH2 = 4)
( g_in , b_out);

input [WIDTH2-1:0] g_in ;
output [WIDTH2-1:0] b_out ;


assign b_out[3] = g_in [3];
assign b_out[2] = b_out[3]^g_in[2];
assign b_out[1] = b_out[2]^g_in[1];
assign b_out[0] = b_out[1]^g_in[0] ;


endmodule
