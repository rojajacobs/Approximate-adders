`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:30 06/08/2020 
// Design Name: 
// Module Name:    carryselect 
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
module carryselect(co_i,ci_add,ci_prdt,sel_i
    );
output co_i;
input ci_add,ci_prdt,sel_i;

assign co_i=((~sel_i&ci_add)|(sel_i&ci_prdt));

endmodule
