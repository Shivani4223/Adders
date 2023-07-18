`timescale 1ns / 1ps

module RCA_testbench;

	// Inputs
	reg [3:0] a,b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;
	
	// Instantiate the Unit Under Test (UUT)
	RCA uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

	initial begin
		cin=0;
		a = 4'b0110;
		b = 4'b1100;
		#10
		a = 4'b1110;
		b = 4'b1000;
		#10
		a = 4'b0111;
		b = 4'b1110;
		#10
		a = 4'b0010;
		b = 4'b1001;
		#10
		$finish();
	end
	   
endmodule

