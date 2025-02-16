/*
   Arquitetura de Computadores I - Guia_0203b.v
   1438796 - Daniel Matos Marques
*/

module Guia_0203;
// define data

   reg [7:0] a = 8'b00110100 ; // binary 
   reg [7:0] b = 8'b01000110 ; // binary 
   reg [7:0] c = 8'b01001010 ; // binary 
   reg [7:0] d = 8'b11110010 ; // binary 
   reg [7:0] e = 8'b10111101 ; // binary 

// actions
 initial
 begin : main
 $display ( "Guia_0203 - Testes" );
 
   $display ( "A = 0.%8b = 0.%d%d%d%d (4)" , a[7:0], a[7:6], a[5:4], a[3:2], a[1:0] );

   $display ( "B = 0.%8b = 0.%o%o%o (8)" , b[7:0], b[7:5], b[4:2], b[1:0] );

   $display ( "C = 0.%8b = 0.%x%x (16)" , c[7:0], c[7:4], c[3:0] );

   $display ( "D = 0.%8b = 0.%o%o%o (8)" , d[7:0], d[7:5], d[4:2], d[1:0] );

   $display ( "E = 0.%8b = 0.%x%x (16)" , e[7:0], e[7:4], e[3:0] );

 end // main
endmodule // Guia_0203