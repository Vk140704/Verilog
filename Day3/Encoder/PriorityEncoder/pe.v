module pe(
	input[7:0]D, 
	output reg [2:0]Y
	);
always@(*)begin
casex(D)
	8'b1xxx_xxxx: Y=3'b111;
	8'b01xx_xxxx: Y=3'b110;
	8'b001x_xxxx: Y=3'b101;
	8'b0001_xxxx: Y=3'b100;
	8'b0000_1xxx: Y=3'b011;
	8'b0000_01xx: Y=3'b010;
	8'b0000_001x: Y=3'b001;
	8'b0000_0001: Y=3'b000;
	  default:$display("INVALID DATA");

	endcase
end
endmodule
