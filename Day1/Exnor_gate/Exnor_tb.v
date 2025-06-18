module Exnor_tb();
reg a,b;
wire c;
Exnor uut(.a(a),.b(b),.c(c));

initial begin
$dumpfile("Exnor_tb.vcd");
$dumpvars();
$monitor($time,"a=%b,b=%b,c=%b",a,b,c);
     a=0; b=0;
#10  a=0; b=1;
#10  a=1; b=0;
#10  a=1; b=1;
$finish;
end
endmodule
