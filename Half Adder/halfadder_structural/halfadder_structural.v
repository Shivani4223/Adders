module halfadder_structural(a,b,sum,carry);

input a,b;  //inputs
output sum,carry;  //outputs

xor xor1(sum,a,b);  //sum
and and1(carry,a,b);  //carry

endmodule
