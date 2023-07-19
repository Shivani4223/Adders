`timescale 1ns / 1ps

module BCD_testbench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	BCD_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

	initial begin
		a = 0; b = 0; cin = 0;

		// Apply Inputs
        a = 0;  b = 0;  cin = 0;   #100;
        a = 6;  b = 9;  cin = 0;   #100;
        a = 3;  b = 3;  cin = 1;   #100;
        a = 4;  b = 5;  cin = 0;   #100;
        a = 8;  b = 2;  cin = 0;   #100;
        a = 9;  b = 9;  cin = 1;   #100;

		
		#10 $finish;
	end
      
endmodule

