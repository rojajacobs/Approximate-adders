`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:20 06/09/2020 
// Design Name: 
// Module Name:    BCSA 
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
module BCSA(S_I,Co_I,A_I,B_I,Co_Iin
    );
input [15:0] A_I,B_I;
input Co_Iin;
output [15:0] S_I;
output Co_I;
wire m1,m2,m4,m5,m7,m8,m11,m12;

//assign m2=~A_I[0]&~B_I[0];
assign m5=~A_I[4]&~B_I[4];
assign m8=~A_I[8]&~B_I[8];
assign m11=~A_I[12]&~B_I[12];
assign m12=1'b0;

sum_block n1(S_I[3:0],m1,m2,A_I[3:0],B_I[3:0],Co_Iin,(~A_I[4]&~B_I[4]));
sum_block n2(S_I[7:4],m4,m5,A_I[7:4],B_I[7:4],m1,(~A_I[8]&~B_I[8]));
sum_block n3(S_I[11:8],m7,m8,A_I[11:8],B_I[11:8],m4,(~A_I[12]&~B_I[12]));
sum_block n4(S_I[15:12],Co_I,m11,A_I[15:12],B_I[15:12],m7,m12);

endmodule
