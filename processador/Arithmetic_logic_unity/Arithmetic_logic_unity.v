/*
op - operation code
data_1 - first operator
data_2 - second operator
result - result of the operation
zero - boolean flag for data_1 and data_2 equality
shamt - shift amount, mips standard
*/

module Arithmetic_logic_unity
#(
	parameter DATA_WIDTH = 32, 
	parameter OP_WIDTH = 5
)
(
	input [(OP_WIDTH-1):0] op, shamt,
	input [(DATA_WIDTH-1):0] dado1, dado2,
	output reg[(DATA_WIDTH-1):0] resultado,
	output zero
); 		

	wire[(DATA_WIDTH-1):0] n_zero; 
	
	assign n_zero = ( dado2 == 0 ) ? 1 : dado2;
	
	always @ ( * ) 
	begin
		case( op )
			5'b00000: resultado = dado1 + dado2;
			5'b00001: resultado = dado1 - dado2; 
			5'b00010: resultado = dado1 + 1; 
			5'b00011: resultado = dado1 - 1; 
			5'b00100: resultado = dado1 < dado2 ? 1 : 0; // set on less than
			5'b00101: resultado = dado1[15:0] * dado2[15:0]; 
			5'b00110: resultado = dado1 / n_zero; 
			5'b00111: resultado = dado1 << shamt;
			5'b01000: resultado = dado1 >> shamt;
			5'b01001: resultado = ~dado1; 
			5'b01010: resultado = dado1 & dado2; 
			5'b01011: resultado = dado1 | dado2; 
			5'b01100: resultado = dado1 ^ dado2; 
			5'b01101: resultado = dado1 <= dado2 ? 1 : 0; // set on less or equal than - slet
			5'b01110: resultado = dado1 == dado2 ? 1 : 0; // set on equal - seq
			5'b01111: resultado = dado1 != dado2 ? 1 : 0; // set on not equal - sneq
			5'b10000: resultado = { dado1[15:0], dado2[15:0] }; // concatenation
			default: resultado = 0;
		endcase
	end

	assign zero = ( resultado == 0 );
	
endmodule 