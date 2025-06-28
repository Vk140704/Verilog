module dc(
	input [2:0]d,
	output reg [7:0]y
	);
always@(*)begin
 y=0; //it used to give the entire 8bit of y is 0's in that we choose the d position as 1 if we not give it consider y value as unknown and type d value on specific places
 casex(d)
3'b000: y[0]=1'b1;
3'b001: y[1]=1'b1;
3'b010: y[2]=1'b1;
3'b011: y[3]=1'b1;
3'b100: y[4]=1'b1;
3'b101: y[5]=1'b1;
3'b110: y[6]=1'b1;
3'b111: y[7]=1'b1;
default:y = 0;
endcase
end
endmodule
