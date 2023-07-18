
module halfadder_dataflow(a,b,sum,carry);

input a,b;  //inputs
output sum,carry;  //outputs

assign sum = a^b;
assign carry = a*b;

endmodule
