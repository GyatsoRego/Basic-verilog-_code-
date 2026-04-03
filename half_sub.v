module half_sub(a,b,diff,borrow);
input a,b ;
output diff , borrow ;
assign borrow = a^b;
assign diff = ~a&b ;
endmodule