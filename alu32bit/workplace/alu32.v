module alu32(result,ZERO,a,b,opCode);

input [31:0] a;
input [31:0] b;
input [2:0] opCode;
output [31:0] result;
output ZERO;

wire [31:0] Tresult0;
wire [31:0] Tresult1;
wire [31:0] Tresult2;
wire [31:0] Tresult3;
wire [31:0] Tresult4;
wire [31:0] Tresult5;
wire [31:0] Tresult6;
wire [31:0] Tresult7;

wire carry_out_add,carry_out_sub;

_32_bit_and op0(Tresult0,a,b);                    //op0
_32_bit_or  op1(Tresult1,a,b);                    //op1
_32bit_Adder op2(Tresult2,carry_out_add,a,b,1'b0);//op2
_32_bit_xor op3(Tresult3,a,b);					     //op3	
_32bit_Sub op4(Tresult4,carry_out_sub,a,b,1'b1); //op4
_32_bit_shift_right op5(Tresult5,a,b);			    //op5
_32_bit_shift_left op6(Tresult6,a,b);            //op6
_32_bit_nor op7(Tresult7,a,b);                   //op7

_8_1_V2_mux mux1(result[0],Tresult0[0],Tresult1[0],Tresult2[0],Tresult3[0],Tresult4[0],Tresult5[0],Tresult6[0],Tresult7[0],opCode),
			  mux2(result[1],Tresult0[1],Tresult1[1],Tresult2[1],Tresult3[1],Tresult4[1],Tresult5[1],Tresult6[1],Tresult7[1],opCode),
			  mux3(result[2],Tresult0[2],Tresult1[2],Tresult2[2],Tresult3[2],Tresult4[2],Tresult5[2],Tresult6[2],Tresult7[2],opCode),
			  mux4(result[3],Tresult0[3],Tresult1[3],Tresult2[3],Tresult3[3],Tresult4[3],Tresult5[3],Tresult6[3],Tresult7[3],opCode),
			  mux5(result[4],Tresult0[4],Tresult1[4],Tresult2[4],Tresult3[4],Tresult4[4],Tresult5[4],Tresult6[4],Tresult7[4],opCode),
			  mux6(result[5],Tresult0[5],Tresult1[5],Tresult2[5],Tresult3[5],Tresult4[5],Tresult5[5],Tresult6[5],Tresult7[5],opCode),
			  mux7(result[6],Tresult0[6],Tresult1[6],Tresult2[6],Tresult3[6],Tresult4[6],Tresult5[6],Tresult6[6],Tresult7[6],opCode),
			  mux8(result[7],Tresult0[7],Tresult1[7],Tresult2[7],Tresult3[7],Tresult4[7],Tresult5[7],Tresult6[7],Tresult7[7],opCode),
			  mux9(result[8],Tresult0[8],Tresult1[8],Tresult2[8],Tresult3[8],Tresult4[8],Tresult5[8],Tresult6[8],Tresult7[8],opCode),
			  mux10(result[9],Tresult0[9],Tresult1[9],Tresult2[9],Tresult3[9],Tresult4[9],Tresult5[9],Tresult6[9],Tresult7[9],opCode),
			  mux11(result[10],Tresult0[10],Tresult1[10],Tresult2[10],Tresult3[10],Tresult4[10],Tresult5[10],Tresult6[10],Tresult7[10],opCode),
			  mux12(result[11],Tresult0[11],Tresult1[11],Tresult2[11],Tresult3[11],Tresult4[11],Tresult5[11],Tresult6[11],Tresult7[11],opCode),
			  mux13(result[12],Tresult0[12],Tresult1[12],Tresult2[12],Tresult3[12],Tresult4[12],Tresult5[12],Tresult6[12],Tresult7[12],opCode),
			  mux14(result[13],Tresult0[13],Tresult1[13],Tresult2[13],Tresult3[13],Tresult4[13],Tresult5[13],Tresult6[13],Tresult7[13],opCode),
			  mux15(result[14],Tresult0[14],Tresult1[14],Tresult2[14],Tresult3[14],Tresult4[14],Tresult5[14],Tresult6[14],Tresult7[14],opCode),
			  mux16(result[15],Tresult0[15],Tresult1[15],Tresult2[15],Tresult3[15],Tresult4[15],Tresult5[15],Tresult6[15],Tresult7[15],opCode),
			  mux17(result[16],Tresult0[16],Tresult1[16],Tresult2[16],Tresult3[16],Tresult4[16],Tresult5[16],Tresult6[16],Tresult7[16],opCode),
			  mux18(result[17],Tresult0[17],Tresult1[17],Tresult2[17],Tresult3[17],Tresult4[17],Tresult5[17],Tresult6[17],Tresult7[17],opCode),
			  mux19(result[18],Tresult0[18],Tresult1[18],Tresult2[18],Tresult3[18],Tresult4[18],Tresult5[18],Tresult6[18],Tresult7[18],opCode),
			  mux20(result[19],Tresult0[19],Tresult1[19],Tresult2[19],Tresult3[19],Tresult4[19],Tresult5[19],Tresult6[19],Tresult7[19],opCode),
			  mux21(result[20],Tresult0[20],Tresult1[20],Tresult2[20],Tresult3[20],Tresult4[20],Tresult5[20],Tresult6[20],Tresult7[20],opCode),
			  mux22(result[21],Tresult0[21],Tresult1[21],Tresult2[21],Tresult3[21],Tresult4[21],Tresult5[21],Tresult6[21],Tresult7[21],opCode),
			  mux23(result[22],Tresult0[22],Tresult1[22],Tresult2[22],Tresult3[22],Tresult4[22],Tresult5[22],Tresult6[22],Tresult7[22],opCode),
			  mux24(result[23],Tresult0[23],Tresult1[23],Tresult2[23],Tresult3[23],Tresult4[23],Tresult5[23],Tresult6[23],Tresult7[23],opCode),
			  mux25(result[24],Tresult0[24],Tresult1[24],Tresult2[24],Tresult3[24],Tresult4[24],Tresult5[24],Tresult6[24],Tresult7[24],opCode),
			  mux26(result[25],Tresult0[25],Tresult1[25],Tresult2[25],Tresult3[25],Tresult4[25],Tresult5[25],Tresult6[25],Tresult7[25],opCode),
			  mux27(result[26],Tresult0[26],Tresult1[26],Tresult2[26],Tresult3[26],Tresult4[26],Tresult5[26],Tresult6[26],Tresult7[26],opCode),
			  mux28(result[27],Tresult0[27],Tresult1[27],Tresult2[27],Tresult3[27],Tresult4[27],Tresult5[27],Tresult6[27],Tresult7[27],opCode),
			  mux29(result[28],Tresult0[28],Tresult1[28],Tresult2[28],Tresult3[28],Tresult4[28],Tresult5[28],Tresult6[28],Tresult7[28],opCode),
			  mux30(result[29],Tresult0[29],Tresult1[29],Tresult2[29],Tresult3[29],Tresult4[29],Tresult5[29],Tresult6[29],Tresult7[29],opCode),
			  mux31(result[30],Tresult0[30],Tresult1[30],Tresult2[30],Tresult3[30],Tresult4[30],Tresult5[30],Tresult6[30],Tresult7[30],opCode),
			  mux32(result[31],Tresult0[31],Tresult1[31],Tresult2[31],Tresult3[31],Tresult4[31],Tresult5[31],Tresult6[31],Tresult7[31],opCode);


nor zero0(ZERO,result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],
        result[9],result[10],result[11],result[12],result[13],result[14],result[15],result[16],result[17],
	     result[18],result[19],result[20],result[21],result[22],result[23],result[24],result[25],result[26],
	     result[27],result[28],result[29],result[30],result[31]);
	

			  
endmodule