`timescale 1ps/1ps
`include "full_adder.v"

module full_adder_tb ;
reg a , b , Cin ;
wire sum , carry ;

full_adder uut (.a(a), .b(b) ,.Cin(Cin) , .sum(sum) , .carry(carry));

initial begin 
    $dumpfile("full_adder.vcd");
    $dumpvars(0 , full_adder_tb);

    $display("a b Cin | sum carry ");
    $display("--------|----------");
    a=0; b=0; Cin=0; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=0; b=0; Cin=1; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=0; b=1; Cin=0; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=0; b=1; Cin=1; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=1; b=0; Cin=0; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=1; b=0; Cin=1; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=1; b=1; Cin=0; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );
    a=1; b=1; Cin=1; #10 $display("%b %b %b   | %b   %b", a, b, Cin, sum, carry );

    $display ("yo damn nigga ");
    $finish;
end
endmodule

