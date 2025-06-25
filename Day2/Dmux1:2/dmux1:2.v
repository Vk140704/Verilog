module dmux(input i, s,output reg y0,y1);
always@(*)begin
case(s)
1'b0: {y0,y1}={i,1'b0};
1'b1: {y0,y1}={1'b0,i};
default:$display("invalid");
endcase
end
endmodule
