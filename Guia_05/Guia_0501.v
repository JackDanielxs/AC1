// -------------------------
// Guia_0501.v
// Nome: Daniel Matos Marques
// Matricula: 800712

// -------------------------
//  | a | b | (a&~b)  |
//  |---|---|---------|
//  | 0 | 0 |    0    |
//  | 0 | 1 |    0    |
//  | 1 | 0	|    1    |
//  | 1 | 1 |    0    |
// -------------------------

module f1 ( output s, input a, input b );
    // definir dado local
    wire not_a;
    // descrever por portas
    nor n1 (not_a, a ,a);
    nor n2 (s, not_a, b);
endmodule // f1

module f2 ( output s, input a, input b );
    // descrever por expressao
    assign s = (a & ~b);
endmodule // f2

module Guia_0501;
    // ------------------------- definir dados
     reg x;
     reg y;
     wire a, b;
     f1 moduloA ( a, x, y );
     f2 moduloB ( b, x, y );
    // ------------------------- parte principal
     initial
     begin : main
         $display("Guia_0501 - Daniel Matos Marques - 800712");
         $display(" x  y  a  b"); 
         // projetar testes do modulo
         $monitor("%2b %2b %2b %2b", x, y, a, b);
         x = 1'b0; y = 1'b0;
         #1 x = 1'b0; y = 1'b1;
         #1 x = 1'b1; y = 1'b0;
         #1 x = 1'b1; y = 1'b1;
     end
endmodule // Guia_0501