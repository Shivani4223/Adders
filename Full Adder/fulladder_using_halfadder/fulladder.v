module fulladder(a,b,c,sum,carry);

input a,b,c;  //inputs
output sum,carry;  //outputs
wire w1,w2,w3;

halfadder_structural halfadder1 (a,b,w1,w2);
halfadder_structural halfadder2 (w1,c,sum,w3);
or or1(carry,w2,w3);

endmodule
