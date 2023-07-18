// fulladder using behavioural modeling

module fulladder(a,b,cin,s,cout);
 
input a,b,cin;  //inputs
output reg s, cout;  //outputs

always@(a,b,cin) 
begin
	s=a^b^cin;  //sum
	cout=(a&b)|(a&cin)|(b&cin);  //carry
end

endmodule
