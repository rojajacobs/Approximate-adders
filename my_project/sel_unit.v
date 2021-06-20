`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:47 06/08/2020 
// Design Name: 
// Module Name:    sel_unit 
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
module sel_unit(sel_i,gi_lminus1,k0_iplus1
    );
output sel_i;
input gi_lminus1,k0_iplus1;

assign sel_i=k0_iplus1+gi_lminus1;

endmodule
