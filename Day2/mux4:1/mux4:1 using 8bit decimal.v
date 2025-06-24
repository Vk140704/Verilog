module mux4_1(
input [7:0]i0,
input [7:0]i1,
input [7:0]i2,
input [7:0]i3,
input s0,s1,
output [7:0]y_out);
assign y_out= s1? (s0?i3:i2):(s0?i1:i0);
endmodule
