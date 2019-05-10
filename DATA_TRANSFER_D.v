module DATA_TRANSFER_D (I, ContW); 

	input [31:0] I;
	output [95:0] ContW;
	
	//Pieces of the output control word
	wire [4:0] DA, AA, BA, FS;
	wire [63:0] K;
	wire [1:0] PS;
	wire WR, IL, En_ALU, En_B, En_Addr, En_PC, En_PC_Addr, B_SEL, PC_SEL, W_En, O_En, CS, En_Stat, NState;
	
	assign DA = I[4:0];
	assign AA = I[9:5]; 
	assign BA = 5'b0;
	assign K = {56'b0, I[20:12]};
	assign FS = 5'b01000;
	assign PS = 2'b01;
	assign IL = 1'b0;
	assign En_B = 1'b0;
	assign En_PC = 1'b0;
	assign En_PC_Addr = 1'b0;
	assign PC_SEL = 1'b0;
	assign CS = 1'b1;
	assign B_SEL = 1'b1;
	assign NState = 1'b0;
	assign En_Stat = 1'b0;
	
	assign WR = I[22];
	assign O_En = I[22];
	assign En_ALU = ~I[22];
	assign W_En = ~I[22];
	assign En_Addr = ~I[22];
	
	assign ContW = {NState, K, WR, IL, En_ALU, En_B, En_Addr, En_PC, En_PC_Addr, 
						B_SEL, PC_SEL, W_En, O_En, CS, En_Stat, PS, FS, BA, AA, DA};
						
						
endmodule 