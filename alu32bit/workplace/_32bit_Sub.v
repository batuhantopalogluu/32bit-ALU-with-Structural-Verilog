module _32bit_Sub(sum,carry_out,a,b,carry_in);

input [31:0] a,b;
input carry_in;

output [31:0] sum;
output carry_out;

wire temp_carry1,temp_carry2,temp_carry3,temp_carry4,temp_carry5,temp_carry6,temp_carry7;
wire [31:0] tempi;

not not0(tempi[0],b[0]),
    not1(tempi[1],b[1]),
    not2(tempi[2],b[2]),
	 not3(tempi[3],b[3]),
	 not4(tempi[4],b[4]),
	 not5(tempi[5],b[5]),
	 not6(tempi[6],b[6]),
	 not7(tempi[7],b[7]),
	 not8(tempi[8],b[8]),
	 not9(tempi[9],b[9]),
	 not10(tempi[10],b[10]),
	 not11(tempi[11],b[11]),
	 not12(tempi[12],b[12]),
	 not13(tempi[13],b[13]),
	 not14(tempi[14],b[14]),
	 not15(tempi[15],b[15]),
	 not16(tempi[16],b[16]),
	 not17(tempi[17],b[17]),
	 not18(tempi[18],b[18]),
	 not19(tempi[19],b[19]),
	 not20(tempi[20],b[20]),
	 not21(tempi[21],b[21]),
	 not22(tempi[22],b[22]),
	 not23(tempi[23],b[23]),
	 not24(tempi[24],b[24]),
	 not25(tempi[25],b[25]),
	 not26(tempi[26],b[26]),
	 not27(tempi[27],b[27]),
	 not28(tempi[28],b[28]),
	 not29(tempi[29],b[29]),
	 not30(tempi[30],b[30]),
	 not31(tempi[31],b[31]);
	 

_32bit_Adder subb(sum,carry_out,a,tempi,carry_in);
	 

	
endmodule