`timescale 1ps/1ps
`include "bcd_to_excess3.v"

module bcd_to_excess3_tb ;
reg [3:0]a ;
wire [3:0]e ;

bcd_to_excess3 uut (
    .a(a),
    .e(e)
);

initial begin 
    $dumpfile("bcd_to_excess3.vcd");
    $dumpvars(0 , bcd_to_excess3_tb);

    $display("=======================================");
    $display("  BCD Input |  Excess-3 Output        ");
    $display ("======================================");
    $monitor ("  a = %b (%0d) | e = %b (%0d)", a, a, e, e);
    a = 4'b0000; #10;  // BCD 0 → Excess-3 = 0011 (3)
    a = 4'b0001; #10;  // BCD 1 → Excess-3 = 0100 (4)
    a = 4'b0010; #10;  // BCD 2 → Excess-3 = 0101 (5)
    a = 4'b0011; #10;  // BCD 3 → Excess-3 = 0110 (6)
    a = 4'b0100; #10;  // BCD 4 → Excess-3 = 0111 (7)
    a = 4'b0101; #10;  // BCD 5 → Excess-3 = 1000 (8)
    a = 4'b0110; #10;  // BCD 6 → Excess-3 = 1001 (9)
    a = 4'b0111; #10;  // BCD 7 → Excess-3 = 1010 (10)
    a = 4'b1000; #10;  // BCD 8 → Excess-3 = 1011 (11)
    a = 4'b1001; #10;  // BCD 9 → Excess-3 = 1100 (12)

        $display("=======================================");
        $display("        Simulation Complete!          ");
        $display("=======================================");
        $finish;
    end
endmodule