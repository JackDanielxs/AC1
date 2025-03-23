/*
 Guia_0104.v
 1438796 - DANIEL MATOS MARQUES
*/
module Guia_0104;
// define data
 reg [7:0] a = 8'b10110, b = 8'b11011, c = 8'b100100, d = 8'b101011, e = 8'b101100; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0104 - Testes\n" );

 $display ( "A = %8b", a );
 $display ( "A = [%2b] [%2b] [%2b] = %d%d%d (4)", a[5:4], a[3:2], a[1:0], a[5:4], a[3:2], a[1:0] );
 
 $display ( "B = %8b", b );
 $display ( "(8) B = %o", b );
 
 $display ( "C = %8b", c );
 $display ( "(16) C = %x", c );
 
 $display ( "D = %8b", d );
 $display ( "(16) D = %o", d );
 
 $display ( "E = %8b", e );
 $display ( "E = [%2b] [%2b] [%2b] = %d%d%d (4)", e[5:4], e[3:2], e[1:0], e[5:4], e[3:2], e[1:0] );
 
 end // main
endmodule // Guia_0104