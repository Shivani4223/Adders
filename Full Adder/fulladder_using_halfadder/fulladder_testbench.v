module fulladder_testbench;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		#100;
      for(i=0;i<=7;i=i+1)
		begin
			{a,b,c}=i; #5;
			$display("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
		end
		#5 $finish;
	end
      
endmodule
