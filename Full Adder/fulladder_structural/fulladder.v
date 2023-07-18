//fullladder using structural modeling

module fulladder(a,b,cin,s,cout); 

input a,b,cin;  //inputs
output s,cout;  //outputs
wire n1,n2,n3;  //wires

xor xor1(s,a,b,cin);
and and1(n1,a,b);
and and2(n2,a,cin);
and and3(n3,b,cin);
or or1(cout,n1,n2,n3);

endmodule
