// BCD Adder
`timescale 1ns / 1ps

module BCD_adder(a,b,cin,sum,cout);

//inputs
input [3:0]a,b;
input cin;

//outputs
output reg [3:0]sum;
output reg cout;

reg[4:0]sum_t;

always @ (a,b,cin)
begin
	sum_t=a+b+cin;
	if(sum_t > 9) 
	begin
		sum_t = sum_t + 6; //If result greater than 9 add 6
		cout = 1;  //set the carry output 1
		sum = sum_t[3:0];
	end
	else
	begin 
		cout = 0;
		sum = sum_t[3:0];  //If result is in the range of 0 to 9 No change
	end
end

endmodule
