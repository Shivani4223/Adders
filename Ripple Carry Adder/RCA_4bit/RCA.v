//4-bit Ripple Carry Adder

`timescale 1ns / 1ps
module RCA(a,b,cin,s,cout);

//inpputs
input [3:0]a,b;
input cin;

//outputs
output [3:0]s;
output cout;

//assign statement for sum and carry
assign{cout,s}=a+b+cin;

endmodule

