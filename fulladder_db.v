`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:01:37 06/11/2024 
// Design Name: 
// Module Name:    fulladder_db 
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
module fulladder_db(
input a,b,cin,
output s,cout
    );
	 wire x,y,z;

assign x=a^b;
assign s=x^cin;

assign  y=a&b;
assign z=x&cin;
assign cout=y|z;

endmodule
