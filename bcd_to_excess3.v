module bcd_to_excess3( 
    input [3:0]a ,
    output [3:0]e 
);
assign e[3] = (a[3])|(a[2]&a[1])|(a[2]&a[0]) ;
assign e[2] = (~a[2]&a[1])|(~a[2]&a[0])|(a[2]&~a[1]&~a[0]);
assign e[1] = (a[1]&a[0])|(~a[1]&~a[0]);
assign e[0] = ~a[0] ;
endmodule 