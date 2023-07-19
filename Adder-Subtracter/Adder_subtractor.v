// 4-bit Binary Adder-Subtractor
`timescale 1ns / 1ps

module Adder_Subtractor(a,b,cin,s,cout);

//inputs
input [3:0]a,b;
input cin;

//outputs
output [3:0]s;
output cout;

//wires
wire w0,w1,w2,w3;
wire c0,c1,c2;

xor x1(w0,b[0],cin);
fulladder_datalflow fa0(a[0],w0,cin,s[0],c0);

xor x2(w1,b[1],cin);
fulladder_datalflow fa1(a[1],w1,c0,s[1],c1);

xor x3(w2,b[2],cin);
fulladder_datalflow fa2(a[2],w2,c1,s[2],c2);

xor x4(w3,b[3],cin);
fulladder_datalflow fa3(a[3],w3,c2,s[3],cout);

endmodule
