`define Xdig1 X[7:4]
`define Xdig0 X[3:0]
`define Ydig1 Y[7:4]
`define Ydig0 Y[3:0]
`define Zdig2 Z[11:8]
`define Zdig1 Z[7:4]
`define Zdig0 Z[3:0]
module bcd_2digit_adder(
    input [7:0]X ,
    inout [7:0]Y,
    output [11:0]Z
)
wire[4:0] S0;
wire[4:0] S1;
wire C;
assign S0 = Xdig0 + Ydig0 ;
assign Zdig0 = (S0 > 9 )? S0 + 6 : S0 ;
assign C = (S0 > 9) ? 1'b1 : 1'b0 ;

assign S1 = Xdig1 +  Ydig1 + C;
assign Zdig1 = (S1>9)? S1+6 : S1;
assign Zdig2 = (Zdig1>9)? 4'b0001 : 4'b0000 ;
endmodule