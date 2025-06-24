module mux4_1_tb();
reg[7:0] i0,i1,i2,i3;
reg s0,s1;
wire[7:0] y_out;
mux4_1 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y_out(y_out));
initial begin
$dumpfile("mux4_1_tb.vcd");
$dumpvars();
$monitor ("%0t\ti0= %d\ti1= %d\ti2= %d\ti3= %d\ts0= %b\ts1=%b\ty_out=%d",$time,i0,i1,i2,i3,s0,s1,y_out);
i0=4'd0;
i1=4'd1;
i2=4'd2;
i3=4'd3;
 repeat (6) begin
{s0,s1}=$random;
end
end
endmodule
