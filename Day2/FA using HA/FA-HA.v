module ha(input a,b,output s,c );
xor(s,a,b);
and(c,a,b);
endmodule

module fa(input a,b,cin, output s_out,c_out);
wire s,c0,c1;
ha fa1( a,b,s,c0);
ha fa2(s,cin,s_out,c1);
assign c_out=c0|c1;
endmodule
