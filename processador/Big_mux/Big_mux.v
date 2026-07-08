

module Multiplexador_PC
#(
	parameter DATA_WIDTH = 32, 
	parameter SIGNAL_WIDTH = 2
)
(
	input zero, beq, bneq,
	input [(SIGNAL_WIDTH-1):0]  seletor,
	input [(DATA_WIDTH-1):0]  pc_out, ext_sum, ext_signal, reg_bank_upper_data,
	output reg [(DATA_WIDTH-1):0] saida_big_mult
);			
	
//	always @ ( * )
	always @ ( pc_out or ext_sum or ext_signal or reg_bank_upper_data or zero or seletor or beq or bneq ) 
	begin
		saida_big_mult <= 32'b0;
		case( seletor )
			2'b01: // branchs
			begin	
				if( ( bneq == 1 ) && ( zero == 1 ) )
					saida_big_mult <= pc_out;
				else if( ( bneq == 1 ) && ( zero == 0 ) )
					saida_big_mult <= ext_sum;
				else if( ( beq == 1 ) && ( zero == 1 ) )
					saida_big_mult <= ext_sum;
				else if( ( beq == 1 ) && ( zero == 0 ) )
					saida_big_mult <= pc_out;
			end
			
			2'b10: saida_big_mult <= ext_signal; // jump
			
			2'b11 : saida_big_mult <= reg_bank_upper_data; // jump to register 
			
			default: saida_big_mult <= pc_out; 
			
		endcase
	end

endmodule



