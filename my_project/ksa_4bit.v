`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:24:14 05/31/2020 
// Design Name: 
// Module Name:    ksa_4bit 
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
module ksa_4bit(output [3:0]sum,

output carryout,
output [3:0] p,
output [3:0] g,
output [3:0] k,
input [3:0]a,
input [3:0]b,
input cin
    );
wire [3:0] cp,cg,ccg,ccp,c;

assign p=a^b;
assign g=a&b;
assign k=~a&~b;

assign cg[0]=(g[0]);
assign cp[0]=(p[0]);

assign cg[1]=(p[1]&g[0])|g[1];
assign cp[1]=(p[1]&p[0]);

assign cg[2]=(p[2]&g[1])|g[2];
assign cp[2]=p[2]&p[1];

assign cg[3]=(p[3]&g[2])|g[3];
assign cp[3]=p[3]&p[2];

assign ccg[0]=cg[0];
//assign ccp[0]=cp[0];

assign ccg[1]=cg[1];
//assign ccp[1]=cp[1];

assign ccg[2]=(cp[2]&cg[0])|cg[2];
//assign ccp[2]=cp[2]&cp[0];

assign ccg[3]=(cp[3]&cg[1])|cg[3];
//assign ccp[3]=cp[3]&cp[1];

assign c=ccg;
assign sum[0]=p[0]^cin;
assign sum[1]=p[1]^c[0];
assign sum[2]=p[2]^c[1];
assign sum[3]=p[3]^c[2];
assign carryout=c[3];


endmodule
    