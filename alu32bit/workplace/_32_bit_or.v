module _32_bit_or(out,a,b);

input [31:0]a;
input [31:0]b;
output [31:0]out;

or o1(out[0],a[0],b[0]);
or o2(out[1],a[1],b[1]);
or o3(out[2],a[2],b[2]);
or o4(out[3],a[3],b[3]);
or o5(out[4],a[4],b[4]);
or o6(out[5],a[5],b[5]);
or o7(out[6],a[6],b[6]);
or o8(out[7],a[7],b[7]);
or o9(out[8],a[8],b[8]);
or o10(out[9],a[9],b[9]);
or o11(out[10],a[10],b[10]);
or o12(out[11],a[11],b[11]);
or o13(out[12],a[12],b[12]);
or o14(out[13],a[13],b[13]);
or o15(out[14],a[14],b[14]);
or o16(out[15],a[15],b[15]);
or o17(out[16],a[16],b[16]);
or o18(out[17],a[17],b[17]);
or o19(out[18],a[18],b[18]);
or o20(out[19],a[19],b[19]);
or o21(out[20],a[20],b[20]);
or o22(out[21],a[21],b[21]);
or o23(out[22],a[22],b[22]);
or o24(out[23],a[23],b[23]);
or o25(out[24],a[24],b[24]);
or o26(out[25],a[25],b[25]);
or o27(out[26],a[26],b[26]);
or o28(out[27],a[27],b[27]);
or o29(out[28],a[28],b[28]);
or o30(out[29],a[29],b[29]);
or o31(out[30],a[30],b[30]);
or o32(out[31],a[31],b[31]);

endmodule