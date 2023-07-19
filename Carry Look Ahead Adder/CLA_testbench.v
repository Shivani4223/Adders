`timescale 1ns / 1ps

module CLA_testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Cin;

	// Outputs
	wire [3:0] S;
	wire Cout;
	
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

	initial begin
		A = 0; B = 0; Cin = 1;
		#100;
		
      for(i=0;i<=15;i=i+1)
		begin
			A=i;	#5;
			for(j=0;j<=15;j=j+1)
			begin
				B=j;	#5;
				$display("A=%b, B=%b, Cin=%b, S=%b, Cout=%b",A,B,Cin,S,Cout);
			end
			end
			
		#5 $finish;
	end
      
endmodule
