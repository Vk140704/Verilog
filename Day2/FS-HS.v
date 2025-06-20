module hs(input a,b,output reg d,b0);
always@(*)begin
d = a^b;
b0 =(~a)&b;
end
endmodule


module fs(input a,b,bin,output d_out,b_out);
wire d1,bx,by;
hs hs1(a,b,d1,bx);
hs hs2(d1,bin,d_out,by);
assign b_out= bx|by;
endmodule
