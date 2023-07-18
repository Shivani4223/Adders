module testbench;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	halfadder_behavioural uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
   end
	
	initial begin
	for (i=0; i<=3; i=i+1) 
	begin 
		{a,b}= i;
		#5;
		$display ($time, "a=%b, b=%b, sum=%b, carry=%b",a,b,sum,carry);
	end
	
	#5 $finish;
	
	end
      
endmodule

