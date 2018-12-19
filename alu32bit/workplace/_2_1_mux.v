module _2_1_mux(out,a,s);

input [1:0] a;
input s;
output out;

wire snot,andA,andB;

not not1(snot,s);
and add1(andA,snot,a[0]);
and add2(andB,s,a[1]);
or or1(out,andA,andB);

endmodule