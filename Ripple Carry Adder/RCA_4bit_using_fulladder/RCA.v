// 4-bit Ripple Carry Adder Using 1-bit Full Adder
`timescale 1ns / 1ps

module RCA(a,b,cin,s,cout);

//inputs
input [3:0]a,b; 
input cin; 
	
//outpus
output [3:0]s;  
output cout;  
	
wire c0,c1,c2;  //wires
	
//instantiation of fulladders
fulladder fa0(a[0],b[0],cin,s[0],c0);
fulladder fa1(a[1],b[1],c0,s[1],c1);
fulladder fa2(a[2],b[2],c1,s[2],c2);
fulladder fa3(a[3],b[3],c2,s[3],cout);
	
endmodule
