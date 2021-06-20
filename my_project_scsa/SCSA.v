`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:16 06/11/2020 
// Design Name: 
// Module Name:    SCSA 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SCSA(S_I,Co_I,A_I,B_I,Co_Iin
    );
input [15:0] A_I,B_I;
input Co_Iin;
output [15:0] S_I;
output Co_I;
wire m1,m2,m3;

sum_block n1(S_I[3:0],m1,A_I[3:0],B_I[3:0],Co_Iin);
sum_block n2(S_I[7:4],m2,A_I[7:4],B_I[7:4],m1);
sum_block n3(S_I[11:8],m3,A_I[11:8],B_I[11:8],m2);
sum_block n4(S_I[15:12],Co_I,A_I[15:12],B_I[15:12],m3);

endmodule
