/*
   Arquitetura de Computadores I - Guia_0204b.v
   1438796 - Daniel Matos Marques
*/

module Guia_0204;
// define data

   reg [7:0] a = 8'd231; // base-4
   reg [10:0] b = 16'h5C2; // hexadecimal 
   reg [8:0]  c = 12'o735; // octal 
reg [11: 0]  d = 12'o2345; // octal 
   reg [11:0] e = 16'hBACE; // corrected hexadecimal

   reg [11:0] bin; // declare bin variable

// actions
 initial
 begin : main
    $display ("Guia_0204 - Testes");
 
    bin = a;
    $display ("a = 0.%d (4) = 0.%b (2)", a, bin[9:0]);
    bin = b;
    $display ("b = 0.%x (16) = 0.%d%d%d%d (4)", b, bin[7:6], bin[5:4], bin[3:2], bin[1:0]);
    bin = c;
    $display ("c = 0.%o (8) = 0.%b (2)", c, bin[9:0]);
    bin = d;
    $display ("d = 0.%o (8) = 0.%d%d%d%d (4)", d, bin[7:6], bin[5:4], bin[3:2], bin[1:0]);
    bin = e; 
    $display ("e = 0.%x (16) = 0.%d%d%d%d (4)", e, bin[7:6], bin[5:4], bin[3:2], bin[1:0]);

 end // main
endmodule // Guia_0204
