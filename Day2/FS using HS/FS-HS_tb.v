module fs_tb();
reg a,b,bin;
wire d_out,b_out;
fs uut(.a(a),.b(b),.bin(bin),.d_out(d_out),.b_out(b_out));
initial begin
$dumpfile("fs-hs_tb.vcd");
$dumpvars();
$monitor($time,"a=%b,b=%b,bin=%b,d_out=%b,b_out=%b",a,b,bin,d_out,b_out);
#10 a=0; b=0; bin=0;
#10 a=0; b=0; bin=1;
#10 a=0; b=1; bin=1;
#10 a=1; b=0; bin=0;
#10 a=1; b=0; bin=1;
#10 a=1; b=1; bin=0;
#10 a=1; b=1; bin=1;
$finish;
end 
endmodule
