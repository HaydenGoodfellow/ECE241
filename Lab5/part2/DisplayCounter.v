module DisplayCounter(SW, HEX0, CLOCK_50);
	input [9:0] SW;
	input CLOCK_50;
	output [6:0] HEX0;
	
	wire [3:0] Q;
	wire enable;
	wire [27:0] upperBound, counter;
	
	reg reset;
	reg [1:0] Sel;
	
	always @(*)
	begin
		reset= SW[9];
		Sel = SW[1:0];
	end
	
	GetFreq f(Sel, upperBound);
	RateDivider r(CLOCK_50, upperBound, enable,counter);
	counter4b c(enable, CLOCK_50, reset, Q);
	HexDecoder h0(Q, HEX0);
endmodule

module GetFreq(SW, upperBound);
	input [1:0] SW;
	output reg [27:0] upperBound;
	always @(*)
		case(SW[1:0])
			2'b00: upperBound = 27'b0;
			2'b01: upperBound = 27'b001011111010111100000111111;
			2'b10: upperBound = 27'b010111110101111000001111111;
			2'b11: upperBound = 27'b101111101011110000011111111;
		endcase
endmodule

module RateDivider(clk, upperBound, enable, counter);
	input clk;
	input [27:0] upperBound; 
	output reg enable;
	output reg [27:0] counter;
	always @(posedge clk)
	begin
		if (counter === 27'bx)
		begin
			counter <= 27'b0;
		end 
		else if (counter == upperBound)
		begin
			enable= 1'b1;
			counter <= 27'b0;
		end
		else
		begin
			enable = 1'b0;
			counter <= counter + 1 ;
		end
	end
		
endmodule 

module counter4b(enable, clk, reset, q);
	input enable, clk, reset; 
	output reg [3:0] q;
	always @(posedge clk) 
	begin
		if (reset == 1'b1) 
		begin
			q <= 0; 
		end
		else if (enable == 1'b1) 
		begin
			q <= q + 1; 
		end
	end
endmodule


module HexDecoder (In, HEX);
	input [3:0] In;
	output [6:0] HEX;

	assign c0 = In[0];
	assign c1 = In[1];
	assign c2 = In[2];
	assign c3 = In[3];
	
	assign HEX[0] = (~c3 & ~c2 & ~c1 & c0) + (~c3 & c2 & ~c1 & ~c0) + (c3 & ~c2 & c1 & c0) + (c3 & c2 & ~c1 & c0);
	assign HEX[1] = (~c3 & c2 & ~c1 & c0) + (~c3 & c2 & c1 & ~c0) + (c3 & ~c2 & c1 & c0) + (c3 & c2 & ~c1 & ~c0) + (c3 & c2 & c1 & ~c0) + (c3 & c2 & c1 & c0);
	assign HEX[2] = (~c3 & ~c2 & c1 & ~c0) + (c3 & c2 & ~c1 & ~c0) + (c3 & c2 & c1 & ~c0) + (c3 & c2 & c1 & c0);
	assign HEX[3] = (~c3 & ~c2 & ~c1 & c0) + (~c3 & c2 & ~c1 & ~c0) + (~c3 & c2 & c1 & c0) + (c3 & ~c2 & ~c1 & c0) + (c3 & ~c2 & c1 & ~c0) + (c3 & c2 & c1 & c0);
	assign HEX[4] = (~c3 & ~c2 & ~c1 & c0) + (~c3 & ~c2 & c1 & c0) + (~c3 & c2 & ~c1 & ~c0) + (~c3 & c2 & ~c1 & c0) + (~c3 & c2 & c1 & c0) + (c3 & ~c2 & ~c1 & c0);
	assign HEX[5] = (~c3 & ~c2 & ~c1 & c0) + (~c3 & ~c2 & c1 & ~c0) + (~c3 & ~c2 & c1 & c0) + (~c3 & c2 & c1 & c0) + (c3 & c2 & ~c1 & c0);
	assign HEX[6] = (~c3 & ~c2 & ~c1 & ~c0) + (~c3 & ~c2 & ~c1 & c0) + (~c3 & c2 & c1 & c0) + (c3 & c2 & ~c1 & ~c0);
endmodule 
