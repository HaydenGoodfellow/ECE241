module Counter8b (SW, KEY, HEX0, HEX1);
	input [1:0] SW;
	input [1:0] KEY;
	output [6:0] HEX0, HEX1;
	
	wire [6:0] ANDGate;
	wire [7:0] Qout;
		
	TFlipFlop ff0(SW[1], KEY[0], SW[0], Qout[0]);
	assign ANDGate[0] = SW[1] & Qout[0];

	TFlipFlop ff1(ANDGate[0], KEY[0], SW[0], Qout[1]);
	assign ANDGate[1] = ANDGate[0] & Qout[1];

	TFlipFlop ff2(ANDGate[1], KEY[0], SW[0], Qout[2]);
	assign ANDGate[2] = ANDGate[1] & Qout[2];

	TFlipFlop ff3(ANDGate[2], KEY[0], SW[0], Qout[3]);
	assign ANDGate[3] = ANDGate[2] & Qout[3];

	TFlipFlop ff4(ANDGate[3], KEY[0], SW[0], Qout[4]);
	assign ANDGate[4] = ANDGate[3] & Qout[4];

	TFlipFlop ff5(ANDGate[4], KEY[0], SW[0], Qout[5]);
	assign ANDGate[5] = ANDGate[4] & Qout[5];

	TFlipFlop ff6(ANDGate[5], KEY[0], SW[0], Qout[6]);
	assign ANDGate[6] = ANDGate[5] & Qout[6];

	TFlipFlop ff7(ANDGate[6], KEY[0], SW[0], Qout[7]);
	
	HexDecoder h0(Qout[3:0], HEX0);
	HexDecoder h1(Qout[7:4], HEX1);
endmodule 


module TFlipFlop (T, clk, reset, Q);
	input T, clk, reset;
	output reg Q;
	
	always @(posedge clk)
	begin
		if (reset) 
			Q <= 1'b0;
		else 
			Q <= Q ^ T;
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

