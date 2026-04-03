`timescale 1ps/1ps
`include "half_sub.v"
module half_sub_tb ;
wire diff,borrow ;
reg a,b ;

half_sub uut (.a(a) , .b(b) , .diff(diff) , .borrow(borrow));
initial begin 

    $dumpfile("half_sub.vcd");
    $dumpvars(0 , half_sub_tb); 
    a = 0; b = 0; #10;
    $display("a b  | diff borrow ");
    $display("-------------------");
    $display("%b %b |  %b    %b", a, b, diff, borrow);
    
    a = 0; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, diff, borrow);
    
    a = 1; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, diff, borrow);
    
    a = 1; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, diff, borrow);

    $display (" Love U My NIGGA");
    
    $finish;
end

endmodule