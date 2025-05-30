// -------------------------
// Guia_0505.v
// Nome: Daniel Matos Marques
// Matricula: 800712

// ------------------------------
//  | a | b | (a ^ b) = a xor b |
//  |---|---|-------------------|
//  | 0 | 0 |    1              | 
//  | 0 | 1 |    0              |    
//  | 1 | 0	|    0              |
//  | 1 | 1 |    1              |
// ------------------------------

module f1 (output wire s, input wire a, input wire b);
  wire na, nb, n1, n2;

  nor (na, a, a); // NOT a
  nor (nb, b, b); // NOT b
  nor (n1, a, nb); // a NOR ~b
  nor (n2, b, na); // b NOR ~a
  nor (s, n1, n2); // XOR usando apenas NOR

endmodule

module Guia_0505;
  // Definição de registradores e fios
  reg a, b;
  wire s;

  // Instanciação do módulo correto
  f1 uut (s, a, b);

  // Parte principal
  initial begin
    $display("Guia_0505 - Daniel Matos Marques - 800712");
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