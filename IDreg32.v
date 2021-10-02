module ID_EX( clk, rst,pc_In,pc_Out,RegDst_In, ALUSrc_In, MemtoReg_In, RegWrite_In, MemRead_In, MemWrite_In, Branch_In, Jump_In,ALUOp_In, 
			  RegDst_Out, ALUSrc_Out, MemtoReg_Out, RegWrite_Out, MemRead_Out, MemWrite_Out, Branch_Out, Jump_Out,ALUOp_Out,
			  RD1_In, RD2_In, extend_immed_In,RD1_Out, RD2_Out, extend_immed_Out, rt_In, rd_In, rt_Out, rd_Out,opcode_In, opcode_Out, operation_In, operation_Out, in_jump_addr, out_jump_addr);
	input clk, rst;
	input [31:0] pc_In ;
	output [31:0] pc_Out ;
	input RegDst_In, ALUSrc_In, MemtoReg_In, RegWrite_In, MemRead_In, MemWrite_In, Branch_In, Jump_In ;
	input [1:0] ALUOp_In ;
	output RegDst_Out, ALUSrc_Out, MemtoReg_Out, RegWrite_Out, MemRead_Out, MemWrite_Out, Branch_Out, Jump_Out ;
	output [1:0] ALUOp_Out ;
	input [31:0] RD1_In, RD2_In, extend_immed_In ;
	output [31:0] RD1_Out, RD2_Out, extend_immed_Out ;
	input [4:0] rt_In, rd_In ;
	output [4:0] rt_Out, rd_Out ;
	input [5:0] opcode_In;
	output [5:0] opcode_Out;
	input [2:0] operation_In;
	output [2:0] operation_Out;
	input [31:0] in_jump_addr;
	output [31:0] out_jump_addr;
	
	reg [31:0] pc_Out ;
	reg RegDst_Out, ALUSrc_Out, MemtoReg_Out, RegWrite_Out, MemRead_Out, MemWrite_Out, Branch_Out, Jump_Out ;
	reg [1:0] ALUOp_Out ;
	reg [31:0] RD1_Out, RD2_Out, extend_immed_Out, out_jump_addr;
	reg [4:0] rt_Out, rd_Out ;
	reg [5:0] opcode_Out;
	reg [2:0] operation_Out;

	always @( posedge clk ) begin
		if (rst) begin
			pc_Out <= 32'b0;
			RegDst_Out <= 1'b0;
			Jump_Out <= 1'b0;
			ALUOp_Out <= 2'b0;
			RD1_Out <= 32'b0;
			RD2_Out <= 32'b0;
			extend_immed_Out <= 32'b0;
			rt_Out <= 4'b0;
			ALUSrc_Out <= 1'b0;
			MemtoReg_Out <= 1'b0;
			RegWrite_Out <= 1'b0;
			MemRead_Out <= 1'b0;
			MemWrite_Out <= 1'b0;
			Branch_Out <= 1'b0;
			rd_Out <= 4'b0;
			ALUOp_Out <= 2'b0;
			RD1_Out <= 32'b0;
			RD2_Out <= 32'b0;
			extend_immed_Out <= 32'b0;
			opcode_Out <= 6'b0;
			operation_Out <= 3'b0;
			out_jump_addr <= 32'b0;
		end
		else begin
			pc_Out <= pc_In ;
			RegDst_Out <= RegDst_In ;
			ALUSrc_Out <= ALUSrc_In ;
			MemtoReg_Out <= MemtoReg_In ;
			RegWrite_Out <= RegWrite_In ;
			MemRead_Out <= MemRead_In ;
			MemWrite_Out <= MemWrite_In ;
			Branch_Out <= Branch_In ;
			Jump_Out <= Jump_In ;
			ALUOp_Out <= ALUOp_In ;
			RD1_Out <= RD1_In ;
			RD2_Out <= RD2_In ;
			extend_immed_Out <= extend_immed_In ;
			rt_Out <= rt_In ;
			rd_Out <= rd_In ;
			opcode_Out <= opcode_In ;
			operation_Out <= operation_In;
			out_jump_addr <= in_jump_addr;
		end
	end
		
endmodule