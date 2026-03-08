`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2026 17:18:40
// Design Name: 
// Module Name: asc_tb
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
// 
//////////////////////////////////////////////////////////////////////////////////


module asc_tb();

//half & full adder 
     reg a,b,c_in ;
     wire sum1,sum2, c_out;
//half & full subtractor 
     reg b_in;              
     wire diffrence1,diffrence2, borrow1, borrow2;   
//comparator 
     wire a_grt_b,a_eq_b,a_less_b;
asc uut (.a(a),.b(b),.c_in(c_in),
         .sum1(sum1),.sum2(sum2),.c_out(c_out),
         .b_in(b_in),.diffrence1(diffrence1), .diffrence2(diffrence2),.borrow1(borrow1),.borrow2(borrow2),
         .a_grt_b(a_grt_b),.a_less_b(a_less_b),.a_eq_b(a_eq_b)
        );
initial begin
// half adder 
a=0;b=0;c_in=0;b_in=0;
#10      
         
a=0;b=0;c_in=1;b_in=1;
#10      
         
a=0;b=1;c_in=0;b_in=0;
#10      
         
a=0;b=1;c_in=1;b_in=1;
#10      
         
a=1;b=0;c_in=0;b_in=0;
#10      
         
a=1;b=0;c_in=1;b_in=1;
#10      
         
a=1;b=1;c_in=0;b_in=0;
#10      
         
a=1;b=1;c_in=1;b_in=1;
#10;
end
initial begin 
 // Monitor will print whenever a signal changes
        $monitor("Time=%0t | A=%b B=%b Cin=%b | Sum1=%b Sum2=%b  Cout=%b | Diff1=%b  Diff2=%b Borr1=%b Borr2=%b | GT=%b EQ=%b LT=%b", 
                 $time, a, b, c_in, sum1,sum2, c_out, diffrence1,diffrence2 ,borrow1,borrow2, a_grt_b, a_eq_b, a_less_b);
end
endmodule
