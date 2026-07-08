module LCD_display_string
(
	input [4:0] index,
	input [3:0] hex0,hex1,
	input [15:0] reg_msg,
	output reg [7:0] out
);

   always 
		case (reg_msg)
		16'b0000000000000000:
		begin
			case (index)//mensagem iniciando so system
				 5'h00: out <= 8'h49; // I
				 5'h01: out <= 8'h6e; // n
				 5'h02: out <= 8'h69; // i
				 5'h03: out <= 8'h63; // c
				 5'h04: out <= 8'h69; // i
				 5'h05: out <= 8'h61; // a
				 5'h06: out <= 8'h6e; // n
				 5'h07: out <= 8'h64; // d
				 5'h08: out <= 8'h6f; // o
				 5'h09: out <= 8'h20; // (espaço)
				 5'h0A: out <= 8'h53; // S
				 5'h0B: out <= 8'h4f; // O
				 5'h0C: out <= 8'h20; // (espaço)
				 5'h0D: out <= 8'h53; // S
				 5'h0E: out <= 8'h79; // y
				 5'h0F: out <= 8'h73; // s
				 5'h10: out <= 8'h74; // t
				 5'h11: out <= 8'h65; // e
				 5'h12: out <= 8'h6d; // m
			default: out <= 8'h20; // (espaço)
			endcase
		end
		16'b0000000000000001:
		begin
			case (index)//acessar os arquivos ou rodar programas
				 5'h00: out <= 8'h31; // 1
				 5'h01: out <= 8'h20; // (espaço)
				 5'h02: out <= 8'h2d; // -
				 5'h03: out <= 8'h20; // (espaço)
				 5'h04: out <= 8'h65; // e
				 5'h05: out <= 8'h78; // x
				 5'h06: out <= 8'h65; // e
				 5'h07: out <= 8'h63; // c
				 5'h08: out <= 8'h20; // (espaço)
				 5'h09: out <= 8'h70; // p
				 5'h0A: out <= 8'h72; // r
				 5'h0B: out <= 8'h6f; // o
				 5'h0C: out <= 8'h63; // c
				 5'h0D: out <= 8'h20; // (espaço)
				 5'h0E: out <= 8'h32; // 2
				 5'h0F: out <= 8'h20; // (espaço)
				 5'h10: out <= 8'h2d; // -
				 5'h11: out <= 8'h20; // (espaço)
				 5'h12: out <= 8'h61; // a
				 5'h13: out <= 8'h72; // r
				 5'h14: out <= 8'h71; // q
				 5'h15: out <= 8'h75; // u
				 5'h16: out <= 8'h69; // i
				 5'h17: out <= 8'h76; // v
				 5'h18: out <= 8'h6f; // o
				 5'h19: out <= 8'h73; // s
				 
			default: out <= 8'h20; // (espaço)
			endcase
		end
		
		16'b0000000000000010:
		begin
			case (index) //executar quantos arquivos?
				 5'h00: out <= 8'h65; // e
				 5'h01: out <= 8'h78; // x
				 5'h02: out <= 8'h65; // e
				 5'h03: out <= 8'h63; // c
				 5'h04: out <= 8'h75; // u
				 5'h05: out <= 8'h74; // t
				 5'h06: out <= 8'h61; // a
				 5'h07: out <= 8'h72; // r
				 5'h08: out <= 8'h20; // (espaço)
				 5'h09: out <= 8'h71; // q
				 5'h0A: out <= 8'h75; // u
				 5'h0B: out <= 8'h61; // a
				 5'h0C: out <= 8'h6e; // n
				 5'h0D: out <= 8'h74; // t
				 5'h0E: out <= 8'h6f; // o
				 5'h0F: out <= 8'h73; // s
				 5'h10: out <= 8'h20; // (espaço)
				 5'h11: out <= 8'h61; // a
				 5'h12: out <= 8'h72; // r
				 5'h13: out <= 8'h71; // q
				 5'h14: out <= 8'h75; // u
				 5'h15: out <= 8'h69; // i
				 5'h16: out <= 8'h76; // v
				 5'h17: out <= 8'h6f; // o
				 5'h18: out <= 8'h73; // s
			default: out <= 8'h20; // (espaço)
			endcase
		end
		
		16'b0000000000000011:
		begin
			case (index)//arquivo nao encontrado
				 5'h00: out <= 8'h61; // a
				 5'h01: out <= 8'h72; // r
				 5'h02: out <= 8'h71; // q
				 5'h03: out <= 8'h75; // u
				 5'h04: out <= 8'h69; // i
				 5'h05: out <= 8'h76; // v
				 5'h06: out <= 8'h6f; // o
				 5'h07: out <= 8'h20; // (espaço)
				 5'h08: out <= 8'h6e; // n
				 5'h09: out <= 8'h61; // a
				 5'h0A: out <= 8'h6f; // o
				 5'h0B: out <= 8'h20; // (espaço)
				 5'h0C: out <= 8'h65; // e
				 5'h0D: out <= 8'h6e; // n
				 5'h0E: out <= 8'h63; // c
				 5'h0F: out <= 8'h6f; // o
				 5'h10: out <= 8'h6e; // n
				 5'h11: out <= 8'h74; // t
				 5'h12: out <= 8'h72; // r
				 5'h13: out <= 8'h61; // a
				 5'h14: out <= 8'h64; // d
				 5'h15: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000000100:
		begin
			case (index)//executando processo
				 5'h00: out <= 8'h65; // e
				 5'h01: out <= 8'h78; // x
				 5'h02: out <= 8'h65; // e
				 5'h03: out <= 8'h63; // c
				 5'h04: out <= 8'h75; // u
				 5'h05: out <= 8'h74; // t
				 5'h06: out <= 8'h61; // a
				 5'h07: out <= 8'h6e; // n
				 5'h08: out <= 8'h64; // d
				 5'h09: out <= 8'h6f; // o
				 5'h0A: out <= 8'h20; // (espaço)
				 5'h0B: out <= 8'h70; // p
				 5'h0C: out <= 8'h72; // r
				 5'h0D: out <= 8'h6f; // o
				 5'h0E: out <= 8'h63; // c
				 5'h0F: out <= 8'h65; // e
				 5'h10: out <= 8'h73; // s
				 5'h11: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000000101:
		begin
			case (index)//todos procesos concluidos
				5'h00: out <= 8'h54; // T
				5'h01: out <= 8'h6f; // o
				5'h02: out <= 8'h64; // d
				5'h03: out <= 8'h6f; // o
				5'h04: out <= 8'h73; // s
				5'h05: out <= 8'h20; // (espaço)
				5'h06: out <= 8'h70; // p
				5'h07: out <= 8'h72; // r
				5'h08: out <= 8'h6f; // o
				5'h09: out <= 8'h63; // c
				5'h0A: out <= 8'h65; // e
				5'h0B: out <= 8'h73; // s
				5'h0C: out <= 8'h73; // s
				5'h0D: out <= 8'h6f; // o
				5'h0E: out <= 8'h73; // s
				5'h0F: out <= 8'h20; // (espaço)
				5'h10: out <= 8'h63; // c
				5'h11: out <= 8'h6f; // o
				5'h12: out <= 8'h6e; // n
				5'h13: out <= 8'h63; // c
				5'h14: out <= 8'h6c; // l
				5'h15: out <= 8'h75; // u
				5'h16: out <= 8'h69; // i
				5'h17: out <= 8'h64; // d
				5'h18: out <= 8'h6f; // o
				5'h19: out <= 8'h73; // s
				5'h1A: out <= 8'h20; // (espaço)
			
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000000110:
		begin
			case (index)//escolha a operação a executar
				5'h00: out <= 8'h45; // E
				5'h01: out <= 8'h73; // s
				5'h02: out <= 8'h63; // c
				5'h03: out <= 8'h6f; // o
				5'h04: out <= 8'h6c; // l
				5'h05: out <= 8'h68; // h
				5'h06: out <= 8'h61; // a
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h61; // a
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h6f; // o
				5'h0B: out <= 8'h70; // p
				5'h0C: out <= 8'h65; // e
				5'h0D: out <= 8'h72; // r
				5'h0E: out <= 8'h61; // a
				5'h0F: out <= 8'h63; // c
				5'h10: out <= 8'h61; // a
				5'h11: out <= 8'h6f; // o
				5'h12: out <= 8'h20; // (espaço)
				5'h13: out <= 8'h61; // a
				5'h14: out <= 8'h20; // (espaço)
				5'h15: out <= 8'h65; // e
				5'h16: out <= 8'h78; // x
				5'h17: out <= 8'h65; // e
				5'h18: out <= 8'h63; // c
				5'h19: out <= 8'h75; // u
				5'h1A: out <= 8'h74; // t
				5'h1B: out <= 8'h61; // a
				5'h1C: out <= 8'h72; // r
				5'h1D: out <= 8'h20; // (espaço)
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000000111:
		begin
			case (index)//novo, renomear ou apagar
				5'h00: out <= 8'h31; // 1
				5'h01: out <= 8'h20; // (espaço)
				5'h02: out <= 8'h6e; // n
				5'h03: out <= 8'h6f; // o
				5'h04: out <= 8'h76; // v
				5'h05: out <= 8'h6f; // o
				5'h06: out <= 8'h2c; // ,
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h32; // 2
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h72; // r
				5'h0B: out <= 8'h65; // e
				5'h0C: out <= 8'h6e; // n
				5'h0D: out <= 8'h6f; // o
				5'h0E: out <= 8'h6d; // m
				5'h0F: out <= 8'h65; // e
				5'h10: out <= 8'h61; // a
				5'h11: out <= 8'h72; // r
				5'h12: out <= 8'h2c; // ,
				5'h13: out <= 8'h20; // (espaço)
				5'h14: out <= 8'h33; // 3
				5'h15: out <= 8'h20; // (espaço)
				5'h16: out <= 8'h61; // a
				5'h17: out <= 8'h70; // p
				5'h18: out <= 8'h61; // a
				5'h19: out <= 8'h67; // g
				5'h1A: out <= 8'h61; // a
				5'h1B: out <= 8'h72; // r
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001000:
		begin
			case (index)//HD cheio
				5'h00: out <= 8'h48; // H
				5'h01: out <= 8'h64; // d
				5'h02: out <= 8'h20; // (espaço)
				5'h03: out <= 8'h63; // c
				5'h04: out <= 8'h68; // h
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h69; // i
				5'h07: out <= 8'h6f; // o
				5'h08: out <= 8'h20; // (espaço)
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001001:
		begin
			case (index)//numero de instrucoes do arquivo
				5'h00: out <= 8'h44; // D
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h67; // g
				5'h03: out <= 8'h69; // i
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h6f; // o
				5'h08: out <= 8'h20; // (espaço)
				5'h09: out <= 8'h6e; // n
				5'h0A: out <= 8'h65; // e
				5'h0B: out <= 8'h20; // (espaço)
				5'h0C: out <= 8'h64; // d
				5'h0D: out <= 8'h65; // e
				5'h0E: out <= 8'h20; // (espaço)
				5'h0F: out <= 8'h69; // i
				5'h10: out <= 8'h6e; // n
				5'h11: out <= 8'h73; // s
				5'h12: out <= 8'h74; // t
				5'h13: out <= 8'h72; // r
				5'h14: out <= 8'h75; // u
				5'h15: out <= 8'h63; // c
				5'h16: out <= 8'h74; // t
				5'h17: out <= 8'h69; // i
				5'h18: out <= 8'h6f; // o
				5'h19: out <= 8'h6e; // n
				5'h1A: out <= 8'h73; // s
				5'h1B: out <= 8'h20; // (espaço)
				5'h1C: out <= 8'h64; // d
				5'h1D: out <= 8'h6f; // o
				5'h1E: out <= 8'h20; // (espaço)
				5'h1F: out <= 8'h61; // a
				5'h20: out <= 8'h72; // r
				5'h21: out <= 8'h71; // q
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001010:
		begin
			case (index)//digite os 16 bits iniciais
				5'h00: out <= 8'h44; // D
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h67; // g
				5'h03: out <= 8'h69; // i
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h6f; // o
				5'h08: out <= 8'h73; // s
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h31; // 1
				5'h0B: out <= 8'h36; // 6
				5'h0C: out <= 8'h20; // (espaço)
				5'h0D: out <= 8'h62; // b
				5'h0E: out <= 8'h69; // i
				5'h0F: out <= 8'h74; // t
				5'h10: out <= 8'h73; // s
				5'h11: out <= 8'h20; // (espaço)
				5'h12: out <= 8'h69; // i
				5'h13: out <= 8'h6e; // n
				5'h14: out <= 8'h69; // i
				5'h15: out <= 8'h63; // c
				5'h16: out <= 8'h69; // i
				5'h17: out <= 8'h61; // a
				5'h18: out <= 8'h6c; // l
				5'h19: out <= 8'h73; // s	
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001011:
		begin
			case (index)//digite os ultimos 16 bits
				5'h00: out <= 8'h44; // D
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h67; // g
				5'h03: out <= 8'h69; // i
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h6f; // o
				5'h08: out <= 8'h73; // s
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h75; // u
				5'h0B: out <= 8'h6c; // l
				5'h0C: out <= 8'h74; // t
				5'h0D: out <= 8'h69; // i
				5'h0E: out <= 8'h6d; // m
				5'h0F: out <= 8'h6f; // o
				5'h10: out <= 8'h73; // s
				5'h11: out <= 8'h20; // (espaço)
				5'h12: out <= 8'h31; // 1
				5'h13: out <= 8'h36; // 6
				5'h14: out <= 8'h20; // (espaço)
				5'h15: out <= 8'h62; // b
				5'h16: out <= 8'h69; // i
				5'h17: out <= 8'h74; // t
				5'h18: out <= 8'h73; // s
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001100:
		begin
			case (index)//digite o nome do arquivo
				5'h00: out <= 8'h44; // D
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h67; // g
				5'h03: out <= 8'h69; // i
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h6f; // o
				5'h08: out <= 8'h20; // (espaço)
				5'h09: out <= 8'h6e; // n
				5'h0A: out <= 8'h6f; // o
				5'h0B: out <= 8'h6d; // m
				5'h0C: out <= 8'h65; // e
				5'h0D: out <= 8'h20; // (espaço)
				5'h0E: out <= 8'h64; // d
				5'h0F: out <= 8'h6f; // o
				5'h10: out <= 8'h20; // (espaço)
				5'h11: out <= 8'h61; // a
				5'h12: out <= 8'h72; // r
				5'h13: out <= 8'h71; // q
				5'h14: out <= 8'h75; // u
				5'h15: out <= 8'h69; // i
				5'h16: out <= 8'h76; // v
				5'h17: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001101:
		begin
			case (index)//ja existe esse arquivo
				5'h00: out <= 8'h4a; // J
				5'h01: out <= 8'h61; // a
				5'h02: out <= 8'h20; // (espaço)
				5'h03: out <= 8'h65; // e
				5'h04: out <= 8'h78; // x
				5'h05: out <= 8'h69; // i
				5'h06: out <= 8'h73; // s
				5'h07: out <= 8'h74; // t
				5'h08: out <= 8'h65; // e
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h65; // e
				5'h0B: out <= 8'h73; // s
				5'h0C: out <= 8'h73; // s
				5'h0D: out <= 8'h65; // e
				5'h0E: out <= 8'h20; // (espaço)
				5'h0F: out <= 8'h61; // a
				5'h10: out <= 8'h72; // r
				5'h11: out <= 8'h71; // q
				5'h12: out <= 8'h75; // u
				5'h13: out <= 8'h69; // i
				5'h14: out <= 8'h76; // v
				5'h15: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001110:
		begin
			case (index)//arquivo criado
				5'h00: out <= 8'h41; // A
				5'h01: out <= 8'h72; // r
				5'h02: out <= 8'h71; // q 
				5'h03: out <= 8'h75; // u
				5'h04: out <= 8'h69; // i
				5'h05: out <= 8'h76; // v
				5'h06: out <= 8'h65; // e
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h63; // c
				5'h09: out <= 8'h72; // r
				5'h0A: out <= 8'h69; // i
				5'h0B: out <= 8'h61; // a
				5'h0C: out <= 8'h64; // d
				5'h0D: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000001111:
		begin
			case (index)//qual arquivo renomear
				5'h00: out <= 8'h51;  // Q
				5'h01: out <= 8'h75;  // u
				5'h02: out <= 8'h61;  // a
				5'h03: out <= 8'h6C;  // l
				5'h04: out <= 8'h20;  // (space)
				5'h05: out <= 8'h61;  // a
				5'h06: out <= 8'h72;  // r
				5'h07: out <= 8'h63;  // c
				5'h08: out <= 8'h68;  // h
				5'h09: out <= 8'h69;  // i
				5'h0A: out <= 8'h76;  // v
				5'h0B: out <= 8'h6f; // o
				5'h0C: out <= 8'h20;  // (space)
				5'h0D: out <= 8'h72;  // r
				5'h0E: out <= 8'h65;  // e
				5'h0F: out <= 8'h6E;  // n
				5'h10: out <= 8'h6F;  // o
				5'h11: out <= 8'h6D;  // m
				5'h12: out <= 8'h65;  // e
				5'h13: out <= 8'h61;  // a
				5'h14: out <= 8'h72; // r
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010000://escolha outro id
		begin
			case (index)
				5'h00: out <= 8'h45; // E
				5'h01: out <= 8'h73; // s
				5'h02: out <= 8'h63; // c
				5'h03: out <= 8'h6f; // o
				5'h04: out <= 8'h6c; // l
				5'h05: out <= 8'h68; // h
				5'h06: out <= 8'h61; // a
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h6f; // o
				5'h09: out <= 8'h75; // u
				5'h0A: out <= 8'h74; // t
				5'h0B: out <= 8'h72; // r
				5'h0C: out <= 8'h6f; // o
				5'h0D: out <= 8'h20; // (espaço)
				5'h0E: out <= 8'h49; // I
				5'h0F: out <= 8'h44; // D
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010001://qual o nome do novo arquivo
		begin
			case (index)
				5'h00: out <= 8'h51; // Q
				5'h01: out <= 8'h75; // u
				5'h02: out <= 8'h61; // a
				5'h03: out <= 8'h6c; // l
				5'h04: out <= 8'h20; // (espaço)
				5'h05: out <= 8'h6e; // n
				5'h06: out <= 8'h6f; // o
				5'h07: out <= 8'h6d; // m
				5'h08: out <= 8'h65; // e
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h64; // d
				5'h0B: out <= 8'h6f; // o
				5'h0C: out <= 8'h20; // (espaço)
				5'h0D: out <= 8'h6e; // n
				5'h0E: out <= 8'h6f; // o
				5'h0F: out <= 8'h76; // v
				5'h10: out <= 8'h6f; // o
				5'h11: out <= 8'h20; // (espaço)
				5'h12: out <= 8'h61; // a
				5'h13: out <= 8'h72; // r
				5'h14: out <= 8'h71; // q
				5'h15: out <= 8'h75; // u
				5'h16: out <= 8'h69; // i
				5'h17: out <= 8'h76; // v
				5'h18: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010010://id ja existe
		begin
			case (index)
				5'h00: out <= 8'h49; // I
				5'h01: out <= 8'h44; // D
				5'h02: out <= 8'h20; // (espaço)
				5'h03: out <= 8'h6a; // j
				5'h04: out <= 8'h61; // a
				5'h05: out <= 8'h20; // (espaço)
				5'h06: out <= 8'h65; // e
				5'h07: out <= 8'h78; // x
				5'h08: out <= 8'h69; // i
				5'h09: out <= 8'h73; // s
				5'h0A: out <= 8'h74; // t
				5'h0B: out <= 8'h65; // e
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010011://arquivo renomeado
		begin
			case (index)
				5'h00: out <= 8'h41; // A
				5'h01: out <= 8'h72; // r
				5'h02: out <= 8'h71; // q
				5'h03: out <= 8'h75; // u
				5'h04: out <= 8'h69; // i
				5'h05: out <= 8'h76; // v
				5'h06: out <= 8'h6f; // o
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h72; // r
				5'h09: out <= 8'h65; // e
				5'h0A: out <= 8'h6e; // n
				5'h0B: out <= 8'h6f; // o
				5'h0C: out <= 8'h6d; // m
				5'h0D: out <= 8'h65; // e
				5'h0E: out <= 8'h61; // a
				5'h0F: out <= 8'h64; // d
				5'h10: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010100://qual arquivo deletar
		begin
			case (index)
				5'h00: out <= 8'h51; // Q
				5'h01: out <= 8'h75; // u
				5'h02: out <= 8'h61; // a
				5'h03: out <= 8'h6c; // l
				5'h04: out <= 8'h20; // (espaço)
				5'h05: out <= 8'h61; // a
				5'h06: out <= 8'h72; // r
				5'h07: out <= 8'h71; // q
				5'h08: out <= 8'h75; // u
				5'h09: out <= 8'h69; // i
				5'h0A: out <= 8'h76; // v
				5'h0B: out <= 8'h6f; // o
				5'h0C: out <= 8'h20; // (espaço)
				5'h0D: out <= 8'h64; // d
				5'h0E: out <= 8'h65; // e
				5'h0F: out <= 8'h6c; // l
				5'h10: out <= 8'h65; // e
				5'h11: out <= 8'h74; // t
				5'h12: out <= 8'h61; // a
				5'h13: out <= 8'h72; // r
			default: out <= 8'h20;
			endcase
		end

    16'b0000000000010101://arquivo deletado
		begin
			case (index)
				5'h00: out <= 8'h41; // A
				5'h01: out <= 8'h72; // r
				5'h02: out <= 8'h71; // q
				5'h03: out <= 8'h75; // u
				5'h04: out <= 8'h69; // i
				5'h05: out <= 8'h76; // v
				5'h06: out <= 8'h6f; // o
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h64; // d
				5'h09: out <= 8'h65; // e
				5'h0A: out <= 8'h6c; // l
				5'h0B: out <= 8'h65; // e
				5'h0C: out <= 8'h74; // t
				5'h0D: out <= 8'h61; // a
				5'h0E: out <= 8'h64; // d
				5'h0F: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010110: //iniciando Bios
		begin
			case (index)
				5'h00: out <= 8'h20; // (espaço)
				5'h01: out <= 8'h20; // (espaço)
				5'h02: out <= 8'h20; // (espaço)
				5'h03: out <= 8'h49; // I
				5'h04: out <= 8'h6e; // n
				5'h05: out <= 8'h69; // i
				5'h06: out <= 8'h63; // c
				5'h07: out <= 8'h69; // i
				5'h08: out <= 8'h61; // a
				5'h09: out <= 8'h6e; // n
				5'h0A: out <= 8'h64; // d
				5'h0B: out <= 8'h6f; // o
				5'h0C: out <= 8'h20; // (espaço)
				5'h0D: out <= 8'h20; // (espaço)
				5'h0E: out <= 8'h20; // (espaço)
				5'h0F: out <= 8'h20; // (espaço)
				5'h10: out <= 8'h20; // (espaço)
				5'h11: out <= 8'h20; // (espaço)
				5'h12: out <= 8'h20; // (espaço)
				5'h13: out <= 8'h20; // (espaço)
				5'h14: out <= 8'h42; // B
				5'h15: out <= 8'h49; // I
				5'h16: out <= 8'h4f; // O
				5'h17: out <= 8'h53; // S
				5'h18: out <= 8'h20; // (espaço)
				5'h19: out <= 8'h20; // (espaço)
				5'h1A: out <= 8'h20; // (espaço)
				5'h1B: out <= 8'h20; // (espaço)
				5'h1C: out <= 8'h20; // (espaço)
				5'h1D: out <= 8'h20; // (espaço)
				5'h1E: out <= 8'h20; // (espaço)
				5'h1F: out <= 8'h20; // (espaço)
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000010111: // - OK
		begin
			case (index)
				// Enter number 13
				5'h00: out <= 8'h45;
				5'h01: out <= 8'h6e;
				5'h02: out <= 8'h74;
				5'h03: out <= 8'h65;
				5'h04: out <= 8'h72;
				5'h05: out <= 8'h20;
				5'h06: out <= 8'h6e;
				5'h07: out <= 8'h75;
				5'h08: out <= 8'h6d;
				5'h09: out <= 8'h62;
				5'h0A: out <= 8'h65;
				5'h0B: out <= 8'h72;
				5'h0C: out <= 8'h20;
				5'h0D: out <= 8'h31;
				5'h0E: out <= 8'h33;
				5'h0F: out <= 8'h20;
				default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011000: // - OK
		begin
			case (index)
				//Please enter the required value!
				5'h00: out <= 8'h50;
				5'h01: out <= 8'h6c;
				5'h02: out <= 8'h65;
				5'h03: out <= 8'h61;
				5'h04: out <= 8'h73;
				5'h05: out <= 8'h65;
				5'h06: out <= 8'h20;
				5'h07: out <= 8'h65;
				5'h08: out <= 8'h6e;
				5'h09: out <= 8'h74;
				5'h0A: out <= 8'h65;
				5'h0B: out <= 8'h72;
				5'h0C: out <= 8'h20;
				5'h0D: out <= 8'h74;
				5'h0E: out <= 8'h68;
				5'h0F: out <= 8'h65;
				5'h10: out <= 8'h20;
				5'h11: out <= 8'h72;
				5'h12: out <= 8'h65;
				5'h13: out <= 8'h71;
				5'h14: out <= 8'h75;
				5'h15: out <= 8'h69;
				5'h16: out <= 8'h72;
				5'h17: out <= 8'h65;
				5'h18: out <= 8'h64;
				5'h19: out <= 8'h20;
				5'h1A: out <= 8'h76;
				5'h1B: out <= 8'h61;
				5'h1C: out <= 8'h6c;
				5'h1D: out <= 8'h75;
				5'h1E: out <= 8'h65;
				5'h1F: out <= 8'h21;

				default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011001: 
		begin
			case (index)//memoria iniciada
				5'h00: out <= 8'h4d; // M
				5'h01: out <= 8'h65; // e
				5'h02: out <= 8'h6d; // m
				5'h03: out <= 8'h6f; // o
				5'h04: out <= 8'h72; // r
				5'h05: out <= 8'h69; // i
				5'h06: out <= 8'h61; // a
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h69; // i
				5'h09: out <= 8'h6e; // n
				5'h0A: out <= 8'h69; // i
				5'h0B: out <= 8'h63; // c
				5'h0C: out <= 8'h69; // i
				5'h0D: out <= 8'h61; // a
				5'h0E: out <= 8'h64; // d
				5'h0F: out <= 8'h61; // a
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011010: 
		begin
			case (index)//components logicos iniciados
				5'h00: out <= 8'h43; // C
				5'h01: out <= 8'h6f; // o
				5'h02: out <= 8'h6d; // m
				5'h03: out <= 8'h70; // p
				5'h04: out <= 8'h6f; // o
				5'h05: out <= 8'h6e; // n
				5'h06: out <= 8'h65; // e
				5'h07: out <= 8'h6e; // n
				5'h08: out <= 8'h74; // t
				5'h09: out <= 8'h65; // e
				5'h0A: out <= 8'h73; // s
				5'h0B: out <= 8'h20; // (espaço)
				5'h0C: out <= 8'h6c; // l
				5'h0D: out <= 8'h6f; // o
				5'h0E: out <= 8'h67; // g
				5'h0F: out <= 8'h69; // i
				5'h10: out <= 8'h63; // c
				5'h11: out <= 8'h6f; // o
				5'h12: out <= 8'h73; // s
				5'h13: out <= 8'h20; // (espaço)
				5'h14: out <= 8'h69; // i
				5'h15: out <= 8'h6e; // n
				5'h16: out <= 8'h69; // i
				5'h17: out <= 8'h63; // c
				5'h18: out <= 8'h69; // i
				5'h19: out <= 8'h61; // a
				5'h1A: out <= 8'h64; // d
				5'h1B: out <= 8'h6f; // o
				5'h1C: out <= 8'h73; // s
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011011:
		begin
			case (index)//iniciando SO
				5'h00: out <= 8'h49; // I
				5'h01: out <= 8'h6e; // n
				5'h02: out <= 8'h69; // i
				5'h03: out <= 8'h63; // c
				5'h04: out <= 8'h69; // i
				5'h05: out <= 8'h61; // a
				5'h06: out <= 8'h6e; // n
				5'h07: out <= 8'h64; // d
				5'h08: out <= 8'h6f; // o
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h53; // S
				5'h0B: out <= 8'h4f; // O
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011100: 
		begin
			case (index)//sistema iniciado
				5'h00: out <= 8'h53; // S
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h73; // s
				5'h03: out <= 8'h74; // t
				5'h04: out <= 8'h65; // e
				5'h05: out <= 8'h6d; // m
				5'h06: out <= 8'h61; // a
				5'h07: out <= 8'h20; // (espaço)
				5'h08: out <= 8'h69; // i
				5'h09: out <= 8'h6e; // n
				5'h0A: out <= 8'h69; // i
				5'h0B: out <= 8'h63; // c
				5'h0C: out <= 8'h69; // i
				5'h0D: out <= 8'h61; // a
				5'h0E: out <= 8'h64; // d
				5'h0F: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011101: 
		begin
			case (index)//digite id do arquivo
				5'h00: out <= 8'h44; // D
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h67; // g
				5'h03: out <= 8'h69; // i
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h49; // I
				5'h08: out <= 8'h44; // D
				5'h09: out <= 8'h20; // (espaço)
				5'h0A: out <= 8'h64; // d
				5'h0B: out <= 8'h6f; // o
				5'h0C: out <= 8'h20; // (espaço)
				5'h0D: out <= 8'h61; // a
				5'h0E: out <= 8'h72; // r
				5'h0F: out <= 8'h71; // q
				5'h10: out <= 8'h75; // u
				5'h11: out <= 8'h69; // i
				5'h12: out <= 8'h76; // v
				5'h13: out <= 8'h6f; // o
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011110: 
		begin
			case (index)//digite uma entrada
				5'h00: out <= 8'h44; // D
				5'h01: out <= 8'h69; // i
				5'h02: out <= 8'h67; // g
				5'h03: out <= 8'h69; // i
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h75; // u
				5'h08: out <= 8'h6d; // m
				5'h09: out <= 8'h61; // a
				5'h0A: out <= 8'h20; // (espaço)
				5'h0B: out <= 8'h65; // e
				5'h0C: out <= 8'h6e; // n
				5'h0D: out <= 8'h74; // t
				5'h0E: out <= 8'h72; // r
				5'h0F: out <= 8'h61; // a
				5'h10: out <= 8'h64; // d
				5'h11: out <= 8'h61; // a
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000011111: 
		begin
			case (index)//aperte enter para ver saida
				5'h00: out <= 8'h41; // A
				5'h01: out <= 8'h70; // p
				5'h02: out <= 8'h65; // e
				5'h03: out <= 8'h72; // r
				5'h04: out <= 8'h74; // t
				5'h05: out <= 8'h65; // e
				5'h06: out <= 8'h20; // (espaço)
				5'h07: out <= 8'h65; // e
				5'h08: out <= 8'h6e; // n
				5'h09: out <= 8'h74; // t
				5'h0A: out <= 8'h65; // e
				5'h0B: out <= 8'h72; // r
				5'h0C: out <= 8'h20; // (espaço)
				5'h0D: out <= 8'h70; // p
				5'h0E: out <= 8'h61; // a
				5'h0F: out <= 8'h72; // r
				5'h10: out <= 8'h61; // a
				5'h11: out <= 8'h20; // (espaço)
				5'h12: out <= 8'h76; // v
				5'h13: out <= 8'h65; // e
				5'h14: out <= 8'h72; // r
				5'h15: out <= 8'h20; // (espaço)
				5'h16: out <= 8'h6f; // o
				5'h17: out <= 8'h75; // u
				5'h18: out <= 8'h74; // t
				5'h19: out <= 8'h70; // p
				5'h1A: out <= 8'h75; // u
				5'h1B: out <= 8'h74; // t
			default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000100000: 
		begin
			case (index)//processo executado com sucesso
				5'h00: out <= 8'h50; // P
				5'h01: out <= 8'h72; // r
				5'h02: out <= 8'h6f; // o
				5'h03: out <= 8'h63; // c
				5'h04: out <= 8'h65; // e
				5'h05: out <= 8'h73; // s
				5'h06: out <= 8'h73; // s
				5'h07: out <= 8'h6f; // o
				5'h08: out <= 8'h20; // (espaço)
				5'h09: out <= 8'h65; // e
				5'h0A: out <= 8'h78; // x
				5'h0B: out <= 8'h65; // e
				5'h0C: out <= 8'h63; // c
				5'h0D: out <= 8'h75; // u
				5'h0E: out <= 8'h74; // t
				5'h0F: out <= 8'h61; // a
				5'h10: out <= 8'h64; // d
				5'h11: out <= 8'h6f; // o
				5'h12: out <= 8'h20; // (espaço)
				5'h13: out <= 8'h63; // c
				5'h14: out <= 8'h6f; // o
				5'h15: out <= 8'h6d; // m
				5'h16: out <= 8'h20; // (espaço)
				5'h17: out <= 8'h73; // s
				5'h18: out <= 8'h75; // u
				5'h19: out <= 8'h63; // c
				5'h1A: out <= 8'h65; // e
				5'h1B: out <= 8'h73; // s
				5'h1C: out <= 8'h73; // s
				5'h1D: out <= 8'h6f; // o
				default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000100001:
		begin // A process requires uart input	
			case(index)
				5'h00: out <= 8'h41;
				5'h01: out <= 8'h20;
				5'h02: out <= 8'h70;
				5'h03: out <= 8'h72;
				5'h04: out <= 8'h6f;
				5'h05: out <= 8'h63;
				5'h06: out <= 8'h65;
				5'h07: out <= 8'h73;
				5'h08: out <= 8'h73;
				5'h09: out <= 8'h20;
				5'h0A: out <= 8'h72;
				5'h0B: out <= 8'h65;
				5'h0C: out <= 8'h71;
				5'h0D: out <= 8'h75;
				5'h0E: out <= 8'h69;
				5'h0F: out <= 8'h72;
				5'h10: out <= 8'h65;
				5'h11: out <= 8'h73;
				5'h12: out <= 8'h20;
				5'h13: out <= 8'h75;
				5'h14: out <= 8'h61;
				5'h15: out <= 8'h72;
				5'h16: out <= 8'h74;
				5'h17: out <= 8'h20;
				5'h18: out <= 8'h69;
				5'h19: out <= 8'h6e;
				5'h1A: out <= 8'h70;
				5'h1B: out <= 8'h75;
				5'h1C: out <= 8'h74;
				5'h1D: out <= 8'h20;
				default: out <= 8'h20;
			endcase
		end
		
		16'b0000000000100010:
		begin // A process requires uart output
			case(index)
				5'h00: out <= 8'h41;
				5'h01: out <= 8'h20;
				5'h02: out <= 8'h70;
				5'h03: out <= 8'h72;
				5'h04: out <= 8'h6f;
				5'h05: out <= 8'h63;
				5'h06: out <= 8'h65;
				5'h07: out <= 8'h73;
				5'h08: out <= 8'h73;
				5'h09: out <= 8'h20;
				5'h0A: out <= 8'h72;
				5'h0B: out <= 8'h65;
				5'h0C: out <= 8'h71;
				5'h0D: out <= 8'h75;
				5'h0E: out <= 8'h69;
				5'h0F: out <= 8'h72;
				5'h10: out <= 8'h65;
				5'h11: out <= 8'h73;
				5'h12: out <= 8'h20;
				5'h13: out <= 8'h75;
				5'h14: out <= 8'h61;
				5'h15: out <= 8'h72;
				5'h16: out <= 8'h74;
				5'h17: out <= 8'h20;
				5'h18: out <= 8'h6f;
				5'h19: out <= 8'h75;
				5'h1A: out <= 8'h74;
				5'h1B: out <= 8'h70;
				5'h1C: out <= 8'h75;
				5'h1D: out <= 8'h74;
				5'h1E: out <= 8'h20;
				default: out <= 8'h20;
			endcase
		end
		
		default:
			case (index)
				default: out <= 8'h20;
			endcase
			
		
     endcase 
	  
endmodule 








