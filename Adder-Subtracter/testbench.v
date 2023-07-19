`timescale 1ns / 1ps

module testbench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;
	
	integer i,j;

	// Instantiate the Unit Under Test (UUT)
	Adder_Subtractor uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

	initial begin
		a = 0; b = 0; cin = 1; //for adder cin=0 and for subtractor cin=1
		for(i=0;i<=15;i=i+1)
		begin
			a=i;	#5;
			for(j=0;j<=15;j=j+1)
			begin
				b=j;	#5;
				$display("A=%b, B=%b, Cin=%b, S=%b, Cout=%b",a,b,cin,s,cout);
			end
		end
			
		#5 $finish;
	end

      
endmodule

