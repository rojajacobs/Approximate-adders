`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:55:52 06/08/2020 
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
module sum_block(S_i,Co_i,Kout,A_i,B_i,Co_iprev,Knext
    );
output [3:0] S_i;
output Co_i,Kout;
input [3:0] A_i,B_i;
input Co_iprev,Knext;
wire w1,w2;
wire [3:0] w3,w4,w5 ;

ksa_4bit n1(.sum(S_i),.carryout(w1),.g(w4),.k(w5),.a(A_i),.b(B_i),.cin(Co_iprev));
sel_unit n2(w2,w4[3],Knext);

//assign w6=((w3[3]&w4[2])|(w3[3]&w3[2]&w4[1])|(w3[3]&w3[2]&w3[1]&w4[0]));
 
carryselect n3(Co_i,w1,w4[3],w2);

endmodule
