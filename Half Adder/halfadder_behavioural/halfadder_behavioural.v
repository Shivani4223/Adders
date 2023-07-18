/*Halfadder using behavioural method*/

module halfadder_behavioural(a,b,sum,carry);
	 
input a,b;  //inputs
output reg sum,carry;  //outputs

always@(a,b)
begin
sum=a^b;  //sum
carry=a*b;  //carry
end
endmodule
