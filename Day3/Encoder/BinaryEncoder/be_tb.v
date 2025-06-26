module be_tb();
reg [7:0]D;
wire [2:0]Y;
be uut(.D(D),.Y(Y));
initial begin
$dumpfile("be_tb.vcd");
$dumpvars();
end
integer i;
initial begin 
D=8'D00000001;
for(i=1;i<8;i=i+1)begin
D=D<<1;#100;
end
$finish;
end 
endmodule
