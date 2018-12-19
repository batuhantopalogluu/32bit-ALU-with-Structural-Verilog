module _32_bit_mux(out,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,s);

input a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31;
wire [31:0] a;
input [4:0] s;
output out;
wire [3:0] tempOut;

buf b1(a[0],a31),
	 b2(a[1],a30),
	 b3(a[2],a29),
	 b4(a[3],a28),
	 b5(a[4],a27),
	 b6(a[5],a26),
	 b7(a[6],a25),
	 b8(a[7],a24),
	 b9(a[8],a23),
	 b10(a[9],a22),
	 b11(a[10],a21),
	 b12(a[11],a20),
	 b13(a[12],a19),
	 b14(a[13],a18),
	 b15(a[14],a17),
	 b16(a[15],a16),
	 b17(a[16],a15),
	 b18(a[17],a14),
	 b19(a[18],a13),
	 b20(a[19],a12),
	 b21(a[20],a11),
	 b22(a[21],a10),
	 b23(a[22],a9),
	 b24(a[23],a8),
	 b25(a[24],a7),
	 b26(a[25],a6),
	 b27(a[26],a5),
	 b28(a[27],a4),
	 b29(a[28],a3),
	 b30(a[29],a2),
	 b31(a[30],a1),
	 b32(a[31],a0);


_8_1_mux mux81(tempOut[0],a[7:0],s[2:0]),
				  mux82(tempOut[1],a[15:8],s[2:0]),
				  mux83(tempOut[2],a[23:16],s[2:0]),
				  mux84(tempOut[3],a[31:24],s[2:0]);
_4_1_mux  mux85(out,tempOut,s[4:3]);

endmodule