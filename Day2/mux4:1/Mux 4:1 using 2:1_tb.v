module mux4_1_tb();
reg i0,i1,i2,i3;
reg s0,s1;
wire y_out;
mux4_1 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y_out(y_out));
initial begin
$dumpfile("mux4_1_tb.vcd");
$dumpvars();
$monitor($time,"i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b y_out=%b",i0,i1,i2,i3,s0,s1,y_out);
i0=3'd0;
i1=3'd1;
i2=3'd2;
i3=3'd3;
repeat(6)begin
{s1,s0}=$random;
end
end
endmodule
