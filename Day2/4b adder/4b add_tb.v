module fa_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire c_out;
fa1 uut(.a(a),.b(b),.cin(cin),.s(s),.c_out(c_out));//first letter numeric vara kudathu
initial begin
$dumpfile("4b_add.vcd");
$dumpvars();
$monitor($time,"a=%b, b=%b, cin=%b, s=%b, c_out=%b",a,b,cin,s,c_out);
#10 a=0; b=0; cin=0;
#10 a=0; b=0; cin=1;
#10 a=0; b=1; cin=0;
#10 a=0; b=1; cin=1;
#10 a=1; b=0; cin=0;
#10 a=10; b=2; cin=0;
#10 a=1; b=1; cin=0;
#10 a=1; b=1; cin=1;
$finish;
end
endmodule
