module _32_bit_shift_left(out,a,b);

output [31:0] out;
input [31:0] a;
input [31:0] b;


wire [31:0] temp_out;
wire [4:0] ss;
wire overflow;
wire not_overflow;

buf buf1(ss[0],b[0]),
	 buf2(ss[1],b[1]),
	 buf3(ss[2],b[2]),
	 buf4(ss[3],b[3]),
	 buf5(ss[4],b[4]);

_32_bit_mux   mux0(temp_out[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],ss),
			     mux1(temp_out[1],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],ss),
				  mux2(temp_out[2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],ss),
				  mux3(temp_out[3],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],ss),
				  mux4(temp_out[4],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],ss),
				  mux5(temp_out[5],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],ss),
				  mux6(temp_out[6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],ss),
				  mux7(temp_out[7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],ss),
			     mux8(temp_out[8],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],ss),
			 	  mux9(temp_out[9],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],ss),
				mux10(temp_out[10],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],ss),
				mux11(temp_out[11],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],ss),
				mux12(temp_out[12],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],ss),
				mux13(temp_out[13],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],ss),
				mux14(temp_out[14],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],ss),
				mux15(temp_out[15],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],ss),
				mux16(temp_out[16],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],ss),
				mux17(temp_out[17],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],ss),
				mux18(temp_out[18],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],ss),
				mux19(temp_out[19],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],ss),
				mux20(temp_out[20],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],ss),
				mux21(temp_out[21],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],ss),
				mux22(temp_out[22],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],ss),
				mux23(temp_out[23],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],ss),
				mux24(temp_out[24],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],ss),
				mux25(temp_out[25],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],ss),
				mux26(temp_out[26],1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],ss),
				mux27(temp_out[27],1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],ss),
				mux28(temp_out[28],1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],ss),
				mux29(temp_out[29],1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29],ss),
				mux30(temp_out[30],1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29],a[30],ss),
				mux31(temp_out[31],a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29],a[30],a[31],ss);

		or or1(overflow,b[5],b[6],b[7],b[8],b[9],b[10],b[11],b[12],b[13],b[14],b[15],b[16],b[17],b[18],b[19],b[20],b[21],b[22],b[23],b[24],b[25],b[26],b[27],b[28],b[29],b[30],b[31]);

not not1 (not_overflow,overflow);
			
and aand0 (out[0],temp_out[0],not_overflow),
	 aand1 (out[1],temp_out[1],not_overflow),
	 aand2 (out[2],temp_out[2],not_overflow),
	 aand3 (out[3],temp_out[3],not_overflow),
	 aand4 (out[4],temp_out[4],not_overflow),
	 aand5 (out[5],temp_out[5],not_overflow),
	 aand6 (out[6],temp_out[6],not_overflow),
	 aand7 (out[7],temp_out[7],not_overflow),
	 aand8 (out[8],temp_out[8],not_overflow),
	 aand9 (out[9],temp_out[9],not_overflow),
	 aand10 (out[10],temp_out[10],not_overflow),
	 aand11 (out[11],temp_out[11],not_overflow),
	 aand12 (out[12],temp_out[12],not_overflow),
	 aand13 (out[13],temp_out[13],not_overflow),
	 aand14 (out[14],temp_out[14],not_overflow),
	 aand15 (out[15],temp_out[15],not_overflow),
	 aand16 (out[16],temp_out[16],not_overflow),
	 aand17 (out[17],temp_out[17],not_overflow),
	 aand18 (out[18],temp_out[18],not_overflow),
	 aand19 (out[19],temp_out[19],not_overflow),
	 aand20 (out[20],temp_out[20],not_overflow),
	 aand21 (out[21],temp_out[21],not_overflow),
	 aand22 (out[22],temp_out[22],not_overflow),
	 aand23 (out[23],temp_out[23],not_overflow),
	 aand24 (out[24],temp_out[24],not_overflow),
	 aand25 (out[25],temp_out[25],not_overflow),
	 aand26 (out[26],temp_out[26],not_overflow),
	 aand27 (out[27],temp_out[27],not_overflow),
	 aand28 (out[28],temp_out[28],not_overflow),
	 aand29 (out[29],temp_out[29],not_overflow),
	 aand30 (out[30],temp_out[30],not_overflow),
	 aand31 (out[31],temp_out[31],not_overflow);

	 
	 
	 
	
endmodule