module RotatingReg8b (SW, KEY, LEDR);
	input [9:0] SW;
	input [3:0] KEY;
	output [9:0] LEDR;
	
	wire [7:0] w;
	
	wire [7:0] data, Q;
	wire reset, parLoad, rotRight, ASRight, clk, ASRclk;
	
	assign reset = SW[9];
	assign data[7:0] = SW[7:0];
	assign clk = ~KEY[0];
	assign parLoad = ~KEY[1];
	assign rotRight = ~KEY[2];
	assign ASRight = ~KEY[3];
	assign ASRclk = clk & ~(rotRight & ASRight);
		
	Mux_DFF m0(data[0], parLoad, rotRight, w[7], w[1], clk, reset, Q[0]); 
	Mux_DFF m1(data[1], parLoad, rotRight, w[0], w[2], clk, reset, Q[1]); 
	Mux_DFF m2(data[2], parLoad, rotRight, w[1], w[3], clk, reset, Q[2]); 
	Mux_DFF m3(data[3], parLoad, rotRight, w[2], w[4], clk, reset, Q[3]); 
	Mux_DFF m4(data[4], parLoad, rotRight, w[3], w[5], clk, reset, Q[4]); 
	Mux_DFF m5(data[5], parLoad, rotRight, w[4], w[6], clk, reset, Q[5]); 
	Mux_DFF m6(data[6], parLoad, rotRight, w[5], w[7], clk, reset, Q[6]); 
	Mux_DFF m7(data[7], parLoad, rotRight, w[6], w[0], ASRclk, reset, Q[7]); 
	
	assign LEDR[7:0] = Q[7:0];
	assign LEDR[8] = clk;
	assign LEDR[9] = parLoad;
endmodule
	
	
module Mux_DFF (data, parLoad, loadLeft, right, left, clk, reset, Q);
	input data, parLoad, loadLeft, right, left, clk, reset;
	output Q;
	wire [1:0] w;
	
	Mux2to1 mux0(right, left, loadLeft, w[0]);
	Mux2to1 mux1(Data, w[0], parLoad, w[1]);
	
	DFF ff1(w[1], clk, reset, Q);
endmodule 
	
module Mux2to1 (x, y, s, m);
	input x, y, s;
	output m;
	
	assign m = s ? y : x;
endmodule 


module DFF (data, clk, reset, Q);
	input data, clk, reset;
	output reg Q;
	
	always @(posedge clk)
	begin 
		if (reset == 1)
			Q <= 0;
		else
			Q <= data;
	end
endmodule



