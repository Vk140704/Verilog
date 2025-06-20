module fa_tb();
reg a,b,cin;
wire s_out ,c_out;
fa uut(.a(a),.b(b),.cin(cin),.s_out(s_out),.c_out(c_out));
initial begin
$dumpfile("fa_tb.vcd");
$dumpvars();
$monitor($time,"a=%b,b=%b,cin=%b,s_out=%b,c_out=%b",a,b,cin,s_out,c_out);
#10 a=0; b=0; cin=0;
#10 a=0; b=0; cin=1;
#10 a=0; b=1; cin=0;
#10 a=0; b=1; cin=1;
#10 a=1; b=0; cin=0;
#10 a=1; b=0; cin=1;
#10 a=1; b=1; cin=0;
#10 a=1; b=1; cin=1;
$finish;
end
endmodule
