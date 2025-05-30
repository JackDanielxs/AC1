/*
 Guia_0105.v
 1438796 - DANIEL MATOS MARQUES
*/
module Guia_0105;
// define data
 integer x = 0; // decimal
 //reg [7:0] b ; // binary
 reg [0:8][7:0] a = "PUC-Minas"; //9 caracteres
 reg [0:6][7:0] b = "2025-01";  
 reg [0:20][7:0] c = "Belo Horizonte - M.G"; //21 caracteres
 reg [0:4][7:0] d = { 8'o156, 8'o157, 8'o151, 8'o164, 8'o145 };
 reg [0:4][7:0] e = {8'h4D, 8'h61, 8'h6E, 8'h68, 8'h61}; 
 
// actions
 initial
 begin : main
 $display ( "Guia_0105 - Testes" );
 
 $write("\nA: %s = ", a);
 for ( x = 0; x < 9; x = x + 1 ) begin
        $write ( "%h " , a[x] );
 end

 $write("\nB: %s = ", b);
 for ( x = 0; x < 7; x = x + 1 ) begin
        $write ( "%h " , b[x] );
 end
 
 $write("\nC: %s = ", c);
 for ( x = 0; x < 21; x = x + 1 ) begin
        $write ( "%8b " , c[x] );
 end
 
 $write("\nD: ");
 for ( x = 0; x < 5; x = x + 1 ) begin
        $write ( "%o " , d[x] );
 end
 $write("= %s", d);
 
 $write("\nE: ");
 for ( x = 0; x < 5; x = x + 1 ) begin
        $write ( "%h " , e[x] );
 end
 $write("= %s", e);
        
 end // main
endmodule // Guia_0105