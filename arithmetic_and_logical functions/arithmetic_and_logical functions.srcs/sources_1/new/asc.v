`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2026 16:46:28
// Design Name: 
// Module Name: asc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//  in this verilog code cover :
//adder(full & half)
//substractor(full & half)
//comparator
//////////////////////////////////////////////////////////////////////////////////


module asc(a,b,c_in,sum1,sum2, c_out
           ,diffrence1,diffrence2, borrow1,borrow2,b_in
           ,a_grt_b,a_eq_b,a_less_b);

//half & full adder
    input a,b,c_in;
    output sum1,sum2 , c_out ;
        //logic 
        assign sum1 = a^b;
        assign c_out = a&b;
        assign sum2= a^b^c_in;
        assign c_out = a&b |c_in& (a^b);
//half & full subtractor 
    input b_in;
    output diffrence1, diffrence2 ,borrow1 , borrow2;
        //logic 
        assign diffrence1 = a ^ b;
        assign borrow1 = ~a & b;
        assign diffrence2 = b_in^a^b;
        assign borrow2 =b_in&~(a^b)|~a&b;
//comparator         Bin (A XOR B)' + A'B
    output a_grt_b,a_eq_b,a_less_b;
        assign a_grt_b  = (a > b);
        assign a_less_b = (a < b);
        assign a_eq_b   = (a == b);

endmodule

