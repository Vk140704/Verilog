module mux2_1tb();
reg i0,i1,s;
wire y;
mux2_1 utt(.i0(i0),.i1(i1),.s(s),.y(y));
initial begin
$dumpfile("mux2_1tb.vcd");
$dumpvars();
$monitor(" %0t i0=%b,i1=%b,s=%b,y=%b" ,$time,i0,i1,s,y);
#10 i0=0; i1=1;
#10 s=0;
#10 s=1;
end 
endmodule
