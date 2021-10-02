module IF_ID(clk, rst,pc_in ,instr_in, pc_out, instr_out);
	input clk, rst;
	input [31:0] pc_in, instr_in ;
	output [31:0] pc_out, instr_out ;
	reg [31:0] pc_out, instr_out ;

	
	always @( posedge clk ) begin
		if ( rst ) 
		begin
			pc_out <= 32'b0;
			instr_out <= 32'b0;
		end
		else begin
			pc_out <= pc_in ;
			instr_out <= instr_in ;
		end
	end
		
endmodule