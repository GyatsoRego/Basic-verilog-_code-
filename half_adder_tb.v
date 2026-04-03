`timescale 1ps/1ps
`include "half_adder.v"
module half_adder_tb;

reg a, b;
wire sum, carry;


half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $dumpfile ("half__adder_vcd");
    $dumpvars (0, half_adder_tb);
    $display("a b | Sum Carry");
    $display("-------------");
    
    a = 0; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    
    a = 0; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    
    a = 1; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    
    a = 1; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    $display ("code worked bro , u r good to go ");
    
    $finish;
end

endmodule