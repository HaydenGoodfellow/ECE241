module Mux6to1(SW, LEDR);

	input [9:0] SW;
	output [1:0] LEDR;
   // For ease of readability
	wire [5:0] in;
	wire [2:0] sel;
	assign in[5:0] = SW[5:0];
	assign sel[2:0] = SW[9:7];
	
	reg out;
	
	always @(*)
	begin
		case (sel[2:0])
			3'b000: out = in[0];
			3'b001: out = in[1];
			3'b010: out = in[2];
			3'b011: out = in[3];
			3'b100: out = in[4];
			3'b101: out = in[5];
			default: out = 1'b0;
		endcase
	end
	// Assigns output to appropriate LED
	assign LEDR[0] = out;

endmodule
