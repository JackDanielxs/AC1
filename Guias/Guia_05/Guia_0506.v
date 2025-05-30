// -------------------------
// Guia_0506.v 
// Nome: Daniel Matos Marques
// Matricula: 800712

// ------------------------------
//  | a | b | ~(a ^ b)=a xnor b |
//  |---|---|-------------------|
//  | 0 | 0 |    1              | 
//  | 0 | 1 |    0              |    
//  | 1 | 0	|    0              |
//  | 1 | 1 |    1              |
// ------------------------------

module f1 (output wire s, input wire a, input wire b);
  wire na, nb, n1, n2, n3;

  nand (na, a, a); // NOT a
  nand (nb, b, b); // NOT b
  nand (n1, a, nb); // a NAND ~b
  nand (n2, b, na); // b NAND ~a
  nand (n3, n1, n2); // XOR usando apenas NAND
  nand (s, n3, n3); // NOT(XOR) = XNOR usando NAND

endmodule

module Guia_0506;
  // Definição de registradores e fios
  reg a, b;
  wire s;

  // Instanciação do módulo correto
  f1 uut (s, a, b);

  // Parte principal
  initial begin
    $display("Guia_0506 - Daniel Matos Marques - 800712");
    $display("A  B  |  S");
    $display("------------");
    
    // Aplicação dos testes
    a = 0; b = 0; #1 $display("%b  %b  |  %b", a, b, s);
    a = 0; b = 1; #1 $display("%b  %b  |  %b", a, b, s);
    a = 1; b = 0; #1 $display("%b  %b  |  %b", a, b, s);
    a = 1; b = 1; #1 $display("%b  %b  |  %b", a, b, s);
    
    $finish;
  end
endmodule
