module _8_1_V2_mux(out,a0,a1,a2,a3,a4,a5,a6,a7,s);

input a0,a1,a2,a3,a4,a5,a6,a7;
wire [7:0] a;
input [2:0] s;
output out;
wire [1:0] tempOut;

buf b1(a[0],a0),
	 b2(a[1],a1),
	 b3(a[2],a2),
	 b4(a[3],a3),
	 b5(a[4],a4),
	 b6(a[5],a5),
	 b7(a[6],a6),
	 b8(a[7],a7);

_4_1_mux mux81(tempOut[0],a[3:0],s[1:0]),
			mux82(tempOut[1],a[7:4],s[1:0]);
_2_1_mux	mux83(out,tempOut,s[2]);

endmodule