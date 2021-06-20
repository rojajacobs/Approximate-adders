`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:46:18 06/09/2020 
// Design Name: 
// Module Name:    sum_block 
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
module sum_block(S_i,Co_i,A_i,B_i,Co_iprev
    );
output [3:0] S_i;
output Co_i;
input [3:0] A_i,B_i;
input Co_iprev;
wire [3:0] w1,w2,w3,w4,w5,w6,s0_i,s1_i ;

ksa_4bit k1(s0_i,c0_i,w1,w2,w3,A_i,B_i,1'b0);
ksa_4bit k2(s1_i,c1_i,w4,w5,w6,A_i,B_i,1'b1);

assign Co_i=(w2[3]|(w1[3]&w2[2])|(w1[2]&w2[1])|(w1[1]&w2[0]));

sel_unit k3(S_i,s0_i,s1_i,Co_iprev);

endmodule
