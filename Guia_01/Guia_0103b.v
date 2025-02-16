/*
 Guia_0103.v
 1438796 - DANIEL MATOS MARQUES
*/
module Guia_0103;
// define data
 integer a = 54, b = 67, c = 76, d = 157, e = 731; // decimal
 reg [7:0] bin = 0; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0103 - Testes\n" );

 $display ( "A = %d", a );
 bin = a;
 $display ( "(A = [%2b] [%2b] [%2b] = %d%d%d (4)\n", bin[5:4], bin[3:2], bin[1:0], bin[5:4], bin[3:2], bin[1:0] );
 
 $display ( "B = %d", b );
 bin = b;
 $display ( "(8) B = %o", b );
 
 $display ( "C = %d", c );
 bin = c;
 $display ( "(16) C = %x", c );
 
 $display ( "D = %d", d );
 bin = d;
 $display ( "(16) D = %x", d );
 
 $display ( "E = %d", e );
 bin = e;
 $display ( "(16) E = %x", e );
 
 end // main
endmodule // Guia_0103