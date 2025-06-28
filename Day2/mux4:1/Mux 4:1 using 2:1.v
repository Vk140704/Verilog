module mux2_1(input i0,i1,s,output y_out);
assign y_out= s? i1:i0;
endmodule


module mux4_1(input i0,i1,i2,i3,s0,s1,output y_out);
wire y0,y1;
mux2_1 mux1( i0,i1,s1,y0);
mux2_1 mux2( i2,i3,s1,y1);
mux2_1 mux3( y0,y1,s0,y_out);
endmodule
