module FA_tb();
reg a,b,cin;
wire s,cout;
FA uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

initial begin
$dumpfile("FA_tb.vcd");
$dumpvars();
$monitor($time,"a=%b,b=%b,cin=%b,s=%b,cout=%b",a,b,cin,s,cout);
#10 a=0;b=0;cin=0;
#10 a=0;b=0;cin=1;
#10 a=0;b=1;cin=0;
#10 a=0;b=1;cin=1;
#10 a=1;b=0;cin=0;
#10 a=1;b=0;cin=1;
#10 a=1;b=1;cin=0;
#10 a=1;b=1;cin=1;
$finish;
end 
endmodule
