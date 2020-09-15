module RAM32x4TopModule(SW, KEY, HEX0, HEX2, HEX3, HEX4, HEX5);
	input [9:0] SW;
	input [0:0] KEY;
	output [6:0] HEX0, HEX3, HEX2, HEX4, HEX5;
	wire [3:0] q; 
	reg [3:0] dataIn;
	reg [4:0] address;
	reg clock, writeEn;
	reg [3:0] upperaddress;

	always@(*)
	begin
		dataIn = SW[3:0];
		address = SW[8:4];
		clock = KEY[0];
		writeEn = SW[9];
		upperaddress[3]=0;
		upperaddress[2]=0;
		upperaddress[1]=0;
		upperaddress[0]=SW[8];
	end

	ram32x4 c1(SW[8:4],KEY[0], SW[3:0], SW[9], q);
	HexDecoder h0(q, HEX0);
	HexDecoder h3(q, HEX3);
	HexDecoder h2(SW[3:0], HEX2);
	HexDecoder h4(SW[7:4], HEX4);
	HexDecoder h5(upperaddress, HEX5);
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