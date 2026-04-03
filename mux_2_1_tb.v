`timescale 1ps/1ps
`include "mux_2_1.v"

module mux_2_1_tb ;

reg a,b ,sel ;
wire y ;

mux_2_1 uut (
    .a(a), 
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin 
    $dumpfile("mux_2_1.vcd");
    $dumpvars(0,mux_2_1_tb);


    $display("Time\t a\t b\t sel\t y");
    $display("--------------------------------");
     a = 0; b = 0; sel = 0; #10;
     a = 0; b = 0; sel = 1; #10;
     a = 0; b = 1; sel = 0; #10;
     a = 0; b = 1; sel = 1; #10;
     a = 1; b = 0; sel = 0; #10;
     a = 1; b = 0; sel = 1; #10;
     a = 1; b = 1; sel = 0; #10;
     a = 1; b = 1; sel = 1; #10;

     $display("damn bro u did it again");
     $finish;
end
endmodule 