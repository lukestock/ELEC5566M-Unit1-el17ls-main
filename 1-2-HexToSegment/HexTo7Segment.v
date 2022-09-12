/*
 * Hexadecimal to 7 Segment Encoder 
 * --------------------------------
 * By: Luke Stock
 * For: University of Leeds
 *	Module: ELEC5566M FPGA Design for System-on-Chip
 * Lab: 1.2
 * Date: 11/02/22
 *
 * Description: 
 * ------------
 * The module is a Hexadecimal to 7-segment encoder 
 * using a Verilog procedural block.
 *
 */
 
module HexTo7Segment (
		// Declare input and output ports
		input [3:0] a,
		output reg [6:0] b
);

always @* begin
	case (a)
	4'b0000 : b = 7'b0111111; // 0
	4'b0001 : b = 7'b0000110; // 1 
	4'b0010 : b = 7'b1011011; // 2
	4'b0011 : b = 7'b1001111; // 3
	4'b0100 : b = 7'b1100110; // 4
	4'b0101 : b = 7'b1101101; // 5
	4'b0110 : b = 7'b1111101; // 6
	4'b0111 : b = 7'b0000111; // 7
	4'b1000 : b = 7'b1111111; // 8
	4'b1001 : b = 7'b1100111; // 9
	4'b1010 : b = 7'b1110111; // A
	4'b1011 : b = 7'b1111100; // B
	4'b1100 : b = 7'b0111001; // C
	4'b1101 : b = 7'b1011110; // D
	4'b1110 : b = 7'b1111001; // E
	4'b1111 : b = 7'b1110001; // F

	endcase 
end
endmodule 