module fa(input a,b,cin,output s,c_out);
 assign s = a^b^cin;
 assign c_out = (a&b)|(b&cin)|(cin&a);
endmodule;

module fa1(
input [3:0]a,b,
input cin,
output [3:0]s,
output c_out);
wire x,y,z;
fa fa0(a[0],b[0],1'b0,s[0],x);
fa fa1(a[1],b[1],x,s[1],y);
fa fa2(a[2],b[2],y,s[2],z);
fa fa3(a[3],b[3],z,s[3],c_out);
endmodule
