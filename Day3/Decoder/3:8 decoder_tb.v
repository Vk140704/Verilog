module tb();
reg [2:0]d;
wire [7:0]y;
dc uut(.d(d),.y(y));
initial begin
$dumpfile("dc_tb.vcd");
$dumpvars();
$monitor("%0t  d=%b  y=%b",$time,d,y);
repeat(5)begin
d=$random;#1;
	end
    end
endmodule
