module _8_1_mux(out,a,s);

input [7:0] a;
input [2:0] s;
output out;

wire [1:0] tempOut;

_4_1_mux mux81(tempOut[0],a[3:0],s[1:0]),
			mux82(tempOut[1],a[7:4],s[1:0]);
_2_1_mux mux83(out,tempOut,s[2]);

endmodule