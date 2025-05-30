// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Código de pessoa: 1438796
// --------------------- 

// --------------------- 
// fxyz
// --------------------- 

module Guia_0404;
    reg X, Y, Z, W;
    wire F_a, F_b, F_c, F_d, F_e;

// Expressão para a alternativa a)
assign F_a = (X | Y | Z) & (X | ~Y | ~Z) & (~X | Y | Z) & (~X | ~Y | Z);

// Expressão para a alternativa b)
assign F_b = (X | Y | Z) & (X | ~Y | Z) & (~X | Y | ~Z) & (~X | ~Y | Z);

// Expressão para a alternativa c)
assign F_c = (X | Y | W | Z) & (X | Y | ~W | Z) & (X | ~Y | W | Z) & (~X | Y | W | ~Z) & (~X | ~Y | W | Z);

// Expressão para a alternativa d)
assign F_d = (X | Y | ~W | Z) & (X | ~Y | W | Z) & (X | ~Y | ~W | ~Z) & (~X | Y | W | Z);

// Expressão para a alternativa e)
assign F_e = (X | Y | ~W | Z) & (X | ~Y | W | Z) & (~X | Y | W | ~Z) & (~X | ~Y | W | Z);

    initial begin
        $display("Guia_0404 - Testes");
        $display("X Y Z W | a b c d e");
        $display("-----------------------------");

          // Testando todas as combinações de entrada
          for (X = 0; X <= 1; X = X + 1) begin
            for (Y = 0; Y <= 1; Y = Y + 1) begin
              for (Z = 0; Z <= 1; Z = Z + 1) begin
                for (W = 0; W <= 1; W = W + 1) begin
                  // Exibindo os resultados para cada combinação de entradas
                  #1 $display("%b %b %b %b | %b %b %b %b %b", X, Y, Z, W, F_a, F_b, F_c, F_d, F_e);
                end
              end
            end
          end
        
        $finish;
    end
endmodule