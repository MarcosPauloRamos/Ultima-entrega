module Program_counter
#(
	parameter DATA_WIDTH = 32,
	parameter SIGNAL_WIDTH = 2
)
(
	input [(SIGNAL_WIDTH-1):0] operacao, 
	input clk_escrita, rst, jmp, hlt, zero, bneq, beq, proc_num,// decoded_exec_num
	input [(DATA_WIDTH-1):0] endereco, stored_pc,
	output [(DATA_WIDTH-1):0] prog_count, 
	output [(DATA_WIDTH-1):0] only_proc_pc
);			
	
	reg [(DATA_WIDTH-1):0] os_pc;
	reg [(DATA_WIDTH-1):0] proc_pc;
  
	always @ ( posedge clk_escrita ) 
	begin
		// OS pc
		if( proc_num == 1'b0 )
		begin
			// doesn't execute the branch
			if( ( bneq == 1 ) && ( zero == 1 ) )
				os_pc <= endereco + 1'b1;	
			
			//	executes the branch
			else if( ( bneq == 1 ) && ( zero == 0 ) )
				os_pc  <= endereco;	
			
			//	executes the branch
			else if( ( beq == 1 ) && ( zero == 1 ) )
				os_pc  <= endereco;	
			
			// doesn't execute the branch
			else if( ( beq == 1 ) && ( zero == 0 ) )
				os_pc  <= endereco + 1'b1;	
			
			else if( jmp )
				os_pc <= endereco;
			 
			else if( hlt ) begin
				end
				 
			else 
				os_pc <= endereco + 1'b1;
			
			if( rst ) 
				os_pc <= 0;
			
			// setpc
			if( operacao == 2'b10 )
				proc_pc <= stored_pc; 
				
		end
		// process pc
		else begin
			if(bneq == 1 && zero == 1)
				proc_pc <= endereco + 1'b1;
		
			else if(bneq == 1 && zero == 0)
				proc_pc  <= endereco;	
			
			else if(beq == 1 && zero == 1)
				proc_pc  <= endereco;	
			
			else if(beq == 1 && zero == 0 )
				proc_pc  <= endereco + 1'b1;
			
			else if(jmp)
				proc_pc <= endereco;
			 
			else if(hlt) begin
				end
				 
			else 
				proc_pc <= endereco + 1'b1;
			
			if(rst) 
				proc_pc <= 0;
		end
			
	end
	
	assign prog_count = ( proc_num == 1'b1 ) ? proc_pc : os_pc;
	assign only_proc_pc = proc_pc;
	
endmodule



			