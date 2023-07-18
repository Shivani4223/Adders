// fulladder using dataflow modeling

module fulladder_datalflow(a, b, cin,s,cout); 

input a, b, cin;  //inputs
output s, cout;  //outputs
assign s=a^b^cin;  //sum
assign cout=(a&b)|(a&cin)|(b&cin);  //carry

endmodule
