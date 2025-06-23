module mux2_1(input i0,i1,s,output reg y);
always@(*)begin
case(s)
1'b0: y=i0;
1'b1: y=i1;
endcase
end
endmodule
