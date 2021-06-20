`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:27:46 06/08/2020
// Design Name:   ksa_4bit
// Module Name:   D:/xilinx test/project/my_project/ksa_4bit_tb.v
// Project Name:  my_project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ksa_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ksa_4bit_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire carryout;

	// Instantiate the Unit Under Test (UUT)
	ksa_4bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.carryout(carryout)
	);

	initial begin
		// Initialize Inputs
		a = 4'h1;
		b = 4'h0;
		cin = 1'h0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 4'h4;
		b = 4'h1;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h1;
		b = 4'hA;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h1;
		b = 4'h2;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h1;
		b = 4'h0;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h1;
		b = 4'h0;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h1;
		b = 4'h0;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h1;
		b = 4'h0;
		cin = 1'h0;
#100;
        
		// Add stimulus here
		a = 4'h3;
		b = 4'h4;
		cin = 1'h0;


	end
      
endmodule

