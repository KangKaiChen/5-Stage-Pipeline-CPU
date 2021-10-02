
module Shifter( dataA, dataB, Signal, dataOut );

input [31:0] dataA ;
input [31:0] dataB ;
input [5:0] Signal ;
output [31:0] dataOut ;
reg [31:0] zero = 32'b0;
reg [5:0] ctrl = 6'b100000;
reg [31:0] temp =32'b0 ;
parameter SRL = 6'b000010;

wire [31:0] s1 ;
wire [31:0] s2 ;
wire [31:0] s3 ;
wire [31:0] s4 ;
wire [31:0] s5 ;

//16bit 


mux2X1  ins_431 (dataA[31],1'b0,dataB[4],s1[31],Signal);
mux2X1  ins_430 (dataA[30],1'b0,dataB[4],s1[30],Signal);
mux2X1  ins_429 (dataA[29],1'b0,dataB[4],s1[29],Signal);
mux2X1  ins_428 (dataA[28],1'b0,dataB[4],s1[28],Signal);
mux2X1  ins_427 (dataA[27],1'b0,dataB[4],s1[27],Signal);
mux2X1  ins_426 (dataA[26],1'b0,dataB[4],s1[26],Signal);
mux2X1  ins_425 (dataA[25],1'b0,dataB[4],s1[25],Signal);
mux2X1  ins_424 (dataA[24],1'b0,dataB[4],s1[24],Signal);
mux2X1  ins_423 (dataA[23],1'b0,dataB[4],s1[23],Signal);
mux2X1  ins_422 (dataA[22],1'b0,dataB[4],s1[22],Signal);
mux2X1  ins_421 (dataA[21],1'b0,dataB[4],s1[21],Signal);
mux2X1  ins_420 (dataA[20],1'b0,dataB[4],s1[20],Signal);
mux2X1  ins_419 (dataA[19],1'b0,dataB[4],s1[19],Signal);
mux2X1  ins_418 (dataA[18],1'b0,dataB[4],s1[18],Signal);
mux2X1  ins_417 (dataA[17],1'b0,dataB[4],s1[17],Signal);
mux2X1  ins_416 (dataA[16],1'b0,dataB[4],s1[16],Signal);
mux2X1  ins_415 (dataA[15],dataA[31],dataB[4],s1[15],Signal);
mux2X1  ins_414 (dataA[14],dataA[30],dataB[4],s1[14],Signal);
mux2X1  ins_413 (dataA[13],dataA[29],dataB[4],s1[13],Signal);
mux2X1  ins_412 (dataA[12],dataA[28],dataB[4],s1[12],Signal);
mux2X1  ins_411 (dataA[11],dataA[27],dataB[4],s1[11],Signal);
mux2X1  ins_410 (dataA[10],dataA[26],dataB[4],s1[10],Signal);
mux2X1  ins_409 (dataA[9],dataA[25],dataB[4],s1[9],Signal);
mux2X1  ins_408 (dataA[8],dataA[24],dataB[4],s1[8],Signal);
mux2X1  ins_407 (dataA[7],dataA[23],dataB[4],s1[7],Signal);
mux2X1  ins_406 (dataA[6],dataA[22],dataB[4],s1[6],Signal);
mux2X1  ins_405 (dataA[5],dataA[21],dataB[4],s1[5],Signal);
mux2X1  ins_404 (dataA[4],dataA[20],dataB[4],s1[4],Signal);
mux2X1  ins_403 (dataA[3],dataA[19],dataB[4],s1[3],Signal);
mux2X1  ins_402 (dataA[2],dataA[18],dataB[4],s1[2],Signal);
mux2X1  ins_401 (dataA[1],dataA[17],dataB[4],s1[1],Signal);
mux2X1  ins_400 (dataA[0],dataA[16],dataB[4],s1[0],Signal);

//8bit
mux2X1  ins_331 (s1[31],1'b0,dataB[3],s2[31],Signal);
mux2X1  ins_330 (s1[30],1'b0,dataB[3],s2[30],Signal);
mux2X1  ins_329 (s1[29],1'b0,dataB[3],s2[29],Signal);
mux2X1  ins_328 (s1[28],1'b0,dataB[3],s2[28],Signal);
mux2X1  ins_327 (s1[27],1'b0,dataB[3],s2[27],Signal);
mux2X1  ins_326 (s1[26],1'b0,dataB[3],s2[26],Signal);
mux2X1  ins_325 (s1[25],1'b0,dataB[3],s2[25],Signal);
mux2X1  ins_324 (s1[24],1'b0,dataB[3],s2[24],Signal);
mux2X1  ins_323 (s1[23],s1[31],dataB[3],s2[23],Signal);
mux2X1  ins_322 (s1[22],s1[30],dataB[3],s2[22],Signal);
mux2X1  ins_321 (s1[21],s1[29],dataB[3],s2[21],Signal);
mux2X1  ins_320 (s1[20],s1[28],dataB[3],s2[20],Signal);
mux2X1  ins_319 (s1[19],s1[27],dataB[3],s2[19],Signal);
mux2X1  ins_318 (s1[18],s1[26],dataB[3],s2[18],Signal);
mux2X1  ins_317 (s1[17],s1[25],dataB[3],s2[17],Signal);
mux2X1  ins_316 (s1[16],s1[24],dataB[3],s2[16],Signal);
mux2X1  ins_315 (s1[15],s1[23],dataB[3],s2[15],Signal);
mux2X1  ins_314 (s1[14],s1[22],dataB[3],s2[14],Signal);
mux2X1  ins_313 (s1[13],s1[21],dataB[3],s2[13],Signal);
mux2X1  ins_312 (s1[12],s1[20],dataB[3],s2[12],Signal);
mux2X1  ins_311 (s1[11],s1[19],dataB[3],s2[11],Signal);
mux2X1  ins_310 (s1[10],s1[18],dataB[3],s2[10],Signal);
mux2X1  ins_309 (s1[9],s1[17],dataB[3],s2[9],Signal);
mux2X1  ins_308 (s1[8],s1[16],dataB[3],s2[8],Signal);
mux2X1  ins_307 (s1[7],s1[15],dataB[3],s2[7],Signal);
mux2X1  ins_306 (s1[6],s1[14],dataB[3],s2[6],Signal);
mux2X1  ins_305 (s1[5],s1[13],dataB[3],s2[5],Signal);
mux2X1  ins_304 (s1[4],s1[12],dataB[3],s2[4],Signal);
mux2X1  ins_303 (s1[3],s1[11],dataB[3],s2[3],Signal);
mux2X1  ins_302 (s1[2],s1[10],dataB[3],s2[2],Signal);
mux2X1  ins_301 (s1[1],s1[9],dataB[3],s2[1],Signal);
mux2X1  ins_300 (s1[0],s1[8],dataB[3],s2[0],Signal);
//4bit 
mux2X1  ins_231 (s2[31],1'b0,dataB[2],s3[31],Signal);
mux2X1  ins_230 (s2[30],1'b0,dataB[2],s3[30],Signal);
mux2X1  ins_229 (s2[29],1'b0,dataB[2],s3[29],Signal);
mux2X1  ins_228 (s2[28],1'b0,dataB[2],s3[28],Signal);
mux2X1  ins_227 (s2[27],s2[31],dataB[2],s3[27],Signal);
mux2X1  ins_226 (s2[26],s2[30],dataB[2],s3[26],Signal);
mux2X1  ins_225 (s2[25],s2[29],dataB[2],s3[25],Signal);
mux2X1  ins_224 (s2[24],s2[28],dataB[2],s3[24],Signal);
mux2X1  ins_223 (s2[23],s2[27],dataB[2],s3[23],Signal);
mux2X1  ins_222 (s2[22],s2[26],dataB[2],s3[22],Signal);
mux2X1  ins_221 (s2[21],s2[25],dataB[2],s3[21],Signal);
mux2X1  ins_220 (s2[20],s2[24],dataB[2],s3[20],Signal);
mux2X1  ins_219 (s2[19],s2[23],dataB[2],s3[19],Signal);
mux2X1  ins_218 (s2[18],s2[22],dataB[2],s3[18],Signal);
mux2X1  ins_217 (s2[17],s2[21],dataB[2],s3[17],Signal);
mux2X1  ins_216 (s2[16],s2[20],dataB[2],s3[16],Signal);
mux2X1  ins_215 (s2[15],s2[19],dataB[2],s3[15],Signal);
mux2X1  ins_214 (s2[14],s2[18],dataB[2],s3[14],Signal);
mux2X1  ins_213 (s2[13],s2[17],dataB[2],s3[13],Signal);
mux2X1  ins_212 (s2[12],s2[16],dataB[2],s3[12],Signal);
mux2X1  ins_211 (s2[11],s2[15],dataB[2],s3[11],Signal);
mux2X1  ins_210 (s2[10],s2[14],dataB[2],s3[10],Signal);
mux2X1  ins_209 (s2[9],s2[13],dataB[2],s3[9],Signal);
mux2X1  ins_208 (s2[8],s2[12],dataB[2],s3[8],Signal);
mux2X1  ins_207 (s2[7],s2[11],dataB[2],s3[7],Signal);
mux2X1  ins_206 (s2[6],s2[10],dataB[2],s3[6],Signal);
mux2X1  ins_205 (s2[5],s2[9],dataB[2],s3[5],Signal);
mux2X1  ins_204 (s2[4],s2[8],dataB[2],s3[4],Signal);
mux2X1  ins_203 (s2[3],s2[7],dataB[2],s3[3],Signal);
mux2X1  ins_202 (s2[2],s2[6],dataB[2],s3[2],Signal);
mux2X1  ins_201 (s2[1],s2[5],dataB[2],s3[1],Signal);
mux2X1  ins_200 (s2[0],s2[4],dataB[2],s3[0],Signal);

 // 2 bit
mux2X1  ins_131 (s3[31],1'b0,dataB[1],s4[31],Signal);
mux2X1  ins_130 (s3[30],1'b0,dataB[1],s4[30],Signal);
mux2X1  ins_129 (s3[29],s3[31],dataB[1],s4[29],Signal);
mux2X1  ins_128 (s3[28],s3[30],dataB[1],s4[28],Signal);
mux2X1  ins_127 (s3[27],s3[29],dataB[1],s4[27],Signal);
mux2X1  ins_126 (s3[26],s3[28],dataB[1],s4[26],Signal);
mux2X1  ins_125 (s3[25],s3[27],dataB[1],s4[25],Signal);
mux2X1  ins_124 (s3[24],s3[26],dataB[1],s4[24],Signal);
mux2X1  ins_123 (s3[23],s3[25],dataB[1],s4[23],Signal);
mux2X1  ins_122 (s3[22],s3[24],dataB[1],s4[22],Signal);
mux2X1  ins_121 (s3[21],s3[23],dataB[1],s4[21],Signal);
mux2X1  ins_120 (s3[20],s3[22],dataB[1],s4[20],Signal);
mux2X1  ins_119 (s3[19],s3[21],dataB[1],s4[19],Signal);
mux2X1  ins_118 (s3[18],s3[20],dataB[1],s4[18],Signal);
mux2X1  ins_117 (s3[17],s3[19],dataB[1],s4[17],Signal);
mux2X1  ins_116 (s3[16],s3[18],dataB[1],s4[16],Signal);
mux2X1  ins_115 (s3[15],s3[17],dataB[1],s4[15],Signal);
mux2X1  ins_114 (s3[14],s3[16],dataB[1],s4[14],Signal);
mux2X1  ins_113 (s3[13],s3[15],dataB[1],s4[13],Signal);
mux2X1  ins_112 (s3[12],s3[14],dataB[1],s4[12],Signal);
mux2X1  ins_111 (s3[11],s3[13],dataB[1],s4[11],Signal);
mux2X1  ins_110 (s3[10],s3[12],dataB[1],s4[10],Signal);
mux2X1  ins_109 (s3[9],s3[11],dataB[1],s4[9],Signal);
mux2X1  ins_108 (s3[8],s3[10],dataB[1],s4[8],Signal);
mux2X1  ins_107 (s3[7],s3[9],dataB[1],s4[7],Signal);
mux2X1  ins_106 (s3[6],s3[8],dataB[1],s4[6],Signal);
mux2X1  ins_105 (s3[5],s3[7],dataB[1],s4[5],Signal);
mux2X1  ins_104 (s3[4],s3[6],dataB[1],s4[4],Signal);
mux2X1  ins_103 (s3[3],s3[5],dataB[1],s4[3],Signal);
mux2X1  ins_102 (s3[2],s3[4],dataB[1],s4[2],Signal);
mux2X1  ins_101 (s3[1],s3[3],dataB[1],s4[1],Signal);
mux2X1  ins_100 (s3[0],s3[2],dataB[1],s4[0],Signal);
/*
移位器運算
*/
// bit1
mux2X1  ins_031 (s4[31],1'b0,dataB[0],s5[31],Signal);
mux2X1  ins_030 (s4[30],dataA[31],dataB[0],s5[30],Signal);
mux2X1  ins_029 (s4[29],dataA[30],dataB[0],s5[29],Signal);
mux2X1  ins_028 (s4[28],dataA[29],dataB[0],s5[28],Signal);
mux2X1  ins_027 (s4[27],dataA[28],dataB[0],s5[27],Signal);
mux2X1  ins_026 (s4[26],dataA[27],dataB[0],s5[26],Signal);
mux2X1  ins_025 (s4[25],dataA[26],dataB[0],s5[25],Signal);
mux2X1  ins_024 (s4[24],dataA[25],dataB[0],s5[24],Signal);
mux2X1  ins_023 (s4[23],dataA[24],dataB[0],s5[23],Signal);
mux2X1  ins_022 (s4[22],dataA[23],dataB[0],s5[22],Signal);
mux2X1  ins_021 (s4[21],dataA[22],dataB[0],s5[21],Signal);
mux2X1  ins_020 (s4[20],dataA[21],dataB[0],s5[20],Signal);
mux2X1  ins_019 (s4[19],dataA[20],dataB[0],s5[19],Signal);
mux2X1  ins_018 (s4[18],dataA[19],dataB[0],s5[18],Signal);
mux2X1  ins_017 (s4[17],dataA[18],dataB[0],s5[17],Signal);
mux2X1  ins_016 (s4[16],dataA[17],dataB[0],s5[16],Signal);
mux2X1  ins_015 (s4[15],dataA[16],dataB[0],s5[15],Signal);
mux2X1  ins_014 (s4[14],dataA[15],dataB[0],s5[14],Signal);
mux2X1  ins_013 (s4[13],dataA[14],dataB[0],s5[13],Signal);
mux2X1  ins_012 (s4[12],dataA[13],dataB[0],s5[12],Signal);
mux2X1  ins_011 (s4[11],dataA[12],dataB[0],s5[11],Signal);
mux2X1  ins_010 (s4[10],dataA[11],dataB[0],s5[10],Signal);
mux2X1  ins_009 (s4[9],dataA[10],dataB[0],s5[9],Signal);
mux2X1  ins_008 (s4[8],dataA[9],dataB[0],s5[8],Signal);
mux2X1  ins_007 (s4[7],dataA[8],dataB[0],s5[7],Signal);
mux2X1  ins_006 (s4[6],dataA[7],dataB[0],s5[6],Signal);
mux2X1  ins_005 (s4[5],dataA[6],dataB[0],s5[5],Signal);
mux2X1  ins_004 (s4[4],dataA[5],dataB[0],s5[4],Signal);
mux2X1  ins_003 (s4[3],dataA[4],dataB[0],s5[3],Signal);
mux2X1  ins_002 (s4[2],dataA[3],dataB[0],s5[2],Signal);
mux2X1  ins_001 (s4[1],dataA[2],dataB[0],s5[1],Signal);
mux2X1  ins_000 (s4[0],dataA[1],dataB[0],s5[0],Signal);





assign dataOut = (dataB >= ctrl)? zero :s5 ;
/*
=====================================================
上面為模擬範例，程式撰寫請遵照老師上課說明的方法來寫
=====================================================
*/

endmodule