module pe_tb();
reg [7:0]D;
wire [2:0]Y;
pe uut(.D(D),.Y(Y));
initial begin
$dumpfile("pe_tb.vcd");
$dumpvars();
$monitor($time, "D=%b Y=%b",D,Y);
repeat(5)begin
#1;
D=$random;
end
$finish;
#5;
end
endmodule
