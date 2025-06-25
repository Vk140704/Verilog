module dmux_tb();
reg s;
reg i;
wire y0,y1;
dmux uut(.i(i),.s(s),.y0(y0),.y1(y1));
initial begin 
$dumpfile("dmux_tb.vcd");
$dumpvars();
$monitor($time,"i=%d s=%b y0=%d y1=%d",i,s,y0,y1);
s=0;i=1;
#5
s=1;i=1;
end
endmodule
