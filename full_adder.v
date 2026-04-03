`include "half_adder.v"
module full_adder(a,b,Cin ,sum ,carry );

wire sum1 , carry1 , carry2 ;
input a,b,Cin ;
output sum , carry ;

half_adder ha1 (.a(a),.b(b), .sum(sum1) , .carry(carry1));
half_adder ha2 (.a(Cin) , .b(sum1), .sum(sum) , .carry(carry2));
assign carry = carry1 | carry2 ;
 

endmodule