module mux_2_1(sel ,a,b, y);
input a,b,sel ;
output y ;
assign y = (~sel&a)|(sel&b);
//here we took a as low and b as high .
endmodule