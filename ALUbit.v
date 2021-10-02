module abit(cout, sum, DataA, DataB, cin, bInvert, ctlSignal);

	input DataA, DataB;
	input cin, bInvert;
	input [2:0] ctlSignal;
	output cout, sum;

	wire bi, s;
	wire _and, _or, _rca;

	and(_and, DataA, DataB);
	or(_or, DataA, DataB);
	xor(bi, DataB, bInvert);
	FA tfa(cout, s, DataA, bi, cin);

	assign sum = (ctlSignal == 3'b000)?_and: // AND
				 (ctlSignal == 3'b001)?_or:  // OR
				  s; // ADD SUB SLT

endmodule

