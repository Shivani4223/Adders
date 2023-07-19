// 4-bit Carry Select Adder
`timescale 1ns / 1ps

module CSA(A,B,Cin,S,Cout);

//inputs
input [3:0] A,B;
input Cin;

//outputs
output [3:0] S;
output Cout;

wire [3:0] temp0,temp1,carry0,carry1;

//for caary0
fulladder_datalflow fa00 (A[0],B[0],1'b0,temp0[0],carry0[0]);
fulladder_datalflow fa01(A[1],B[1],carry0[0],temp0[1],carry0[1]);
fulladder_datalflow fa02(A[2],B[2],carry0[1],temp0[2],carry0[2]);
fulladder_datalflow fa03(A[3],B[3],carry0[2],temp0[3],carry0[3]);

//for carry 1
fulladder_datalflow fa10(A[0],B[0],1'b1,temp1[0],carry1[0]);
fulladder_datalflow fa11(A[1],B[1],carry1[0],temp1[1],carry1[1]);
fulladder_datalflow fa12(A[2],B[2],carry1[1],temp1[2],carry1[2]);
fulladder_datalflow fa13(A[3],B[3],carry1[2],temp1[3],carry1[3]);

//mux for carry
mux_2to1 mux_carry(carry0[3],carry1[3],Cin,Cout);

//mux's for sum
mux_2to1 mux_sum0(temp0[0],temp1[0],Cin,S[0]);
mux_2to1 mux_sum1(temp0[1],temp1[1],Cin,S[1]);
mux_2to1 mux_sum2(temp0[2],temp1[2],Cin,S[2]);
mux_2to1 mux_sum3(temp0[3],temp1[3],Cin,S[3]);

endmodule
