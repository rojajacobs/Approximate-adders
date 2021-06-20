`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:01 06/11/2020
// Design Name:   sum_block
// Module Name:   D:/xilinx test/project/my_project_scsa/sum_block_tb.v
// Project Name:  my_project_scsa
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sum_block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sum_block_tb;

	// Inputs
	reg [3:0] A_i;
	reg [3:0] B_i;
	reg Co_iprev;

	// Outputs
	wire [3:0] S_i;
	wire Co_i;

	// Instantiate the Unit Under Test (UUT)
	sum_block uut (
		.S_i(S_i), 
		.Co_i(Co_i), 
		.A_i(A_i), 
		.B_i(B_i), 
		.Co_iprev(Co_iprev)
	);

	initial begin
		// Initialize Inputs
		A_i = 4'h0;
		B_i = 4'h0;
		Co_iprev = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		A_i = 4'h1;
		B_i = 4'h1;
		Co_iprev = 1;

		// Wait 100 ns for global reset to finish
		#100;
		A_i = 4'h2;
		B_i = 4'h1;
		Co_iprev = 0;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

