module DATA_TRANSFER_D_tb ();

	reg [31:0] I;
	wire [95:0] ContW;
	
	DATA_TRANSFER_D data (I, ContW);				
						
	initial begin 
		#10
		I <= 32'b11111000000100000000000000001000; // Test STUR
		#10
		I <= 32'b11111000010100000000000000000100; // Test LDUR
		#10
		//#10
		//I <= 32'b00111000000100000000000000000001; // Test STURB
		//#10
		//I <= 32'b00111000010100000000000000000010; // Test LDURB
		//#10
		$stop;
	end
	
endmodule 