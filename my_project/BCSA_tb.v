`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:26:29 06/09/2020
// Design Name:   BCSA
// Module Name:   D:/xilinx test/project/my_project/BCSA_tb.v
// Project Name:  my_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCSA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCSA_tb;

	// Inputs
	reg [15:0] A_I;
	reg [15:0] B_I;
	reg Co_Iin;

	// Outputs
	wire [15:0] S_I;
	wire Co_I;

	// Instantiate the Unit Under Test (UUT)
	BCSA uut (
		.S_I(S_I), 
		.Co_I(Co_I), 
		.A_I(A_I), 
		.B_I(B_I), 
		.Co_Iin(Co_Iin)
	);

	initial begin
		// Initialize Inputs
		A_I = 16'h0;
		B_I = 16'h0;
		Co_Iin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A_I = 16'h0;
		B_I = 16'h1;
		Co_Iin = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A_I = 16'h2;
		B_I = 16'h1;
		Co_Iin = 0;
		#100;
      A_I = 16'h8;
		B_I = 16'h4;
		Co_Iin = 0;
#100;
      A_I = 16'h9;
		B_I = 16'h5;
		Co_Iin = 0;


	end
      
endmodule

