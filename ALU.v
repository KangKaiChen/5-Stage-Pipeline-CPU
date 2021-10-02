module alu(DataA, DataB, ctlSignal, result, zero);

	input [2:0] ctlSignal;
	input [31:0] DataA, DataB;
	output [31:0] result;
	output zero;

	wire bInvert;
	wire [31:0] carryIn, sum;

	assign bInvert = (ctlSignal == 3'b110)? 1'b1: // SUBTRACT
					 (ctlSignal == 3'b111)? 1'b1: // SLT
					  1'b0;
			   
	abit bit0(.cout(carryIn[0]), .sum(sum[0]), .DataA(DataA[0]), .DataB(DataB[0]), .cin(bInvert), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit1(.cout(carryIn[1]), .sum(sum[1]), .DataA(DataA[1]), .DataB(DataB[1]), .cin(carryIn[0]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit2(.cout(carryIn[2]), .sum(sum[2]), .DataA(DataA[2]), .DataB(DataB[2]), .cin(carryIn[1]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit3(.cout(carryIn[3]), .sum(sum[3]), .DataA(DataA[3]), .DataB(DataB[3]), .cin(carryIn[2]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit4(.cout(carryIn[4]), .sum(sum[4]), .DataA(DataA[4]), .DataB(DataB[4]), .cin(carryIn[3]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit5(.cout(carryIn[5]), .sum(sum[5]), .DataA(DataA[5]), .DataB(DataB[5]), .cin(carryIn[4]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit6(.cout(carryIn[6]), .sum(sum[6]), .DataA(DataA[6]), .DataB(DataB[6]), .cin(carryIn[5]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit7(.cout(carryIn[7]), .sum(sum[7]), .DataA(DataA[7]), .DataB(DataB[7]), .cin(carryIn[6]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit8(.cout(carryIn[8]), .sum(sum[8]), .DataA(DataA[8]), .DataB(DataB[8]), .cin(carryIn[7]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit9(.cout(carryIn[9]), .sum(sum[9]), .DataA(DataA[9]), .DataB(DataB[9]), .cin(carryIn[8]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit10(.cout(carryIn[10]), .sum(sum[10]), .DataA(DataA[10]), .DataB(DataB[10]), .cin(carryIn[9]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit11(.cout(carryIn[11]), .sum(sum[11]), .DataA(DataA[11]), .DataB(DataB[11]), .cin(carryIn[10]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit12(.cout(carryIn[12]), .sum(sum[12]), .DataA(DataA[12]), .DataB(DataB[12]), .cin(carryIn[11]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit13(.cout(carryIn[13]), .sum(sum[13]), .DataA(DataA[13]), .DataB(DataB[13]), .cin(carryIn[12]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit14(.cout(carryIn[14]), .sum(sum[14]), .DataA(DataA[14]), .DataB(DataB[14]), .cin(carryIn[13]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit15(.cout(carryIn[15]), .sum(sum[15]), .DataA(DataA[15]), .DataB(DataB[15]), .cin(carryIn[14]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit16(.cout(carryIn[16]), .sum(sum[16]), .DataA(DataA[16]), .DataB(DataB[16]), .cin(carryIn[15]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit17(.cout(carryIn[17]), .sum(sum[17]), .DataA(DataA[17]), .DataB(DataB[17]), .cin(carryIn[16]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit18(.cout(carryIn[18]), .sum(sum[18]), .DataA(DataA[18]), .DataB(DataB[18]), .cin(carryIn[17]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit19(.cout(carryIn[19]), .sum(sum[19]), .DataA(DataA[19]), .DataB(DataB[19]), .cin(carryIn[18]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit20(.cout(carryIn[20]), .sum(sum[20]), .DataA(DataA[20]), .DataB(DataB[20]), .cin(carryIn[19]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit21(.cout(carryIn[21]), .sum(sum[21]), .DataA(DataA[21]), .DataB(DataB[21]), .cin(carryIn[20]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit22(.cout(carryIn[22]), .sum(sum[22]), .DataA(DataA[22]), .DataB(DataB[22]), .cin(carryIn[21]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit23(.cout(carryIn[23]), .sum(sum[23]), .DataA(DataA[23]), .DataB(DataB[23]), .cin(carryIn[22]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit24(.cout(carryIn[24]), .sum(sum[24]), .DataA(DataA[24]), .DataB(DataB[24]), .cin(carryIn[23]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit25(.cout(carryIn[25]), .sum(sum[25]), .DataA(DataA[25]), .DataB(DataB[25]), .cin(carryIn[24]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit26(.cout(carryIn[26]), .sum(sum[26]), .DataA(DataA[26]), .DataB(DataB[26]), .cin(carryIn[25]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit27(.cout(carryIn[27]), .sum(sum[27]), .DataA(DataA[27]), .DataB(DataB[27]), .cin(carryIn[26]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit28(.cout(carryIn[28]), .sum(sum[28]), .DataA(DataA[28]), .DataB(DataB[28]), .cin(carryIn[27]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit29(.cout(carryIn[29]), .sum(sum[29]), .DataA(DataA[29]), .DataB(DataB[29]), .cin(carryIn[28]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit30(.cout(carryIn[30]), .sum(sum[30]), .DataA(DataA[30]), .DataB(DataB[30]), .cin(carryIn[29]), .bInvert(bInvert), .ctlSignal(ctlSignal));
	abit bit31(.cout(carryIn[31]), .sum(sum[31]), .DataA(DataA[31]), .DataB(DataB[31]), .cin(carryIn[30]), .bInvert(bInvert), .ctlSignal(ctlSignal));

	assign result = (ctlSignal == 3'b111) ? {31'b0, sum[31]} : sum;

	assign zero = (result == 32'b0) ? 1'b1 : 1'b0;
										 

endmodule