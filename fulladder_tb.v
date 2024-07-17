`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:16:32 06/11/2024
// Design Name:   fulladder_db
// Module Name:   /home/ise/codesssss/fulladder_design/fulladder_tb.v
// Project Name:  fulladder_design
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder_db
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_tb;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder_db uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;cin = 0;
		#10 a = 0;b = 0;cin = 1;
		#10 a = 0;b = 1;cin = 0;
		#10 a = 0;b = 1;cin = 1;
		#10 a = 1;b = 0;cin = 0;
		#10 a = 1;b = 0;cin = 1;
		#10 a = 1;b = 1;cin = 0;
		#10 a = 1;b = 1;cin = 1;
		
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

