module WAIT(clk,rst, inBranch, outBranch, inJump, outJump, inMemtoReg, outMemtoReg) ;
		input clk, rst;		  
	input inBranch, inJump,inMemtoReg ;

	output  outBranch, outJump,outMemtoReg ;

	reg outBranch,outJump,outMemtoReg;
	
	always @(posedge clk or rst) begin
		if (rst) begin
         outBranch <= 1'b0 ;
		 outJump  <=1'b0 ;
		 outMemtoReg <=1'b0 ;
		end
		else begin
            outMemtoReg <= inMemtoReg ;
			outBranch <= inBranch ;
            outJump  <= inJump ;
		end
	end
	
endmodule