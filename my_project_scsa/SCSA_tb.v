`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:01:41 06/12/2020
// Design Name:   SCSA
// Module Name:   D:/xilinx test/project/my_project_scsa/SCSA_tb.v
// Project Name:  my_project_scsa
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SCSA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SCSA_tb;

	// Inputs
	reg [15:0] A_I;
	reg [15:0] B_I;
	reg Co_Iin;

	// Outputs
	wire [15:0] S_I;
	wire Co_I;

	// Instantiate the Unit Under Test (UUT)
	SCSA uut (
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
		Co_Iin = 1'h0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A_I = 16'h1;
		B_I = 16'h1;
		Co_Iin = 1'h0;


		// Wait 100 ns for global reset to finish
		#100;
		A_I = 16'h2;
		B_I = 16'h1;
		Co_Iin = 1'h0;


		// Wait 100 ns for global reset to finish
		#100;
		A_I = 16'h7;
		B_I = 16'h3;
		Co_Iin = 1'h0;


		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

