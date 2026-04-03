`timescale 1ps/1ps
`include "hello.v"
module hello_tb ;

reg a ;
wire b ;
hello uut (a,b);

initial begin
   $dumpfile ("hello_tb.vcd");
   $dumpvars (0,hello_tb);

   a = 0 ;
   #10;

   a = 1 ;
   #10

   a = 0 ;
   #10;

   $display ("Test completed ");

end

endmodule