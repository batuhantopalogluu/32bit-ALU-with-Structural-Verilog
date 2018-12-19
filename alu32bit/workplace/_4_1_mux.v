module _4_1_mux(out,a,s);

input [3:0] a;
input [1:0] s;

output out;
wire [1:0]tempOut;

_2_1_mux mux1(tempOut[0],a[1:0],s[0]),
				mux2(tempOut[1],a[3:2],s[0]),
				mux3(out,tempOut,s[1]);

endmodule