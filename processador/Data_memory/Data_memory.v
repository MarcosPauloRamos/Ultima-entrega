/*
data - data to be written in the memory
address - address for the data to be written
clk_write - clock
clk_read - auto clock
data_mem_out - output value of DataMem
write_flag - flag that checks if data will be
stack_use - flag used for stack usage
*/

module Data_memory
#(
	parameter DATA_WIDTH = 32, 
	parameter ADDR_WIDTH = 12
)
( 
	input clk_escrita, clk_leitura, flag_escrita, stack_use,
	input [(DATA_WIDTH-1):0] dado, 
	input [(ADDR_WIDTH-1):0] endereco,
	output [(DATA_WIDTH-1):0] data_mem_out
);

	reg [(DATA_WIDTH-1):0] dm[(2**ADDR_WIDTH-1):0];
	reg [(DATA_WIDTH-1):0] stack[(2**ADDR_WIDTH-1):0];
	reg [(DATA_WIDTH-1):0] data_ram_out, data_stack_out;
	
	always @ ( negedge clk_escrita )
	begin
		if( flag_escrita )
		begin
			if ( stack_use )
				stack[ endereco ] <= dado;
			else
				dm[ endereco ] <= dado;
		end
	end

	always @ ( negedge clk_leitura )
	begin
		data_stack_out <= stack[ endereco ];
		data_ram_out <= dm[ endereco ];
			
	end
	
	assign data_mem_out = ( stack_use ) ? data_stack_out : data_ram_out;

endmodule

