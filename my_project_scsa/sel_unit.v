`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:40:29 06/09/2020 
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
module sel_unit(Si_sel,i0,i1,sel_i
    );
output reg [3:0] Si_sel;
input [3:0] i0,i1;
input sel_i;

always@(i0,i1,sel_i)
begin
if(sel_i)
Si_sel=i1;
else
Si_sel=i0;
end

endmodule
