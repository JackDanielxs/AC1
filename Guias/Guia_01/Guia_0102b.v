/*
 Guia_0102.v
 1438796 - DANIEL MATOS MARQUES
*/
module Guia_0102;
// define data
 integer i = 0; // decimal
 reg [7:0] a = 8'b10011, b = 8'b10101, c = 8'b10110, d = 8'b110010, e = 8'b111011; // binary (bits - little endian)
 // actions
 initial
 begin : main
 $display ( "Guia_0102b - Testes\n" );
 
 $display ( "A = %8b", a );
 i = a;
 $display ( "Decimal A = %d", i );
 
 $display ( "B = %8b", b );
 i = b;
 $display ( "Decimal B = %d", i );
 
 $display ( "C = %8b", c );
 i = c;
 $display ( "Decimal C = %d", i );
 
 $display ( "D = %8b", d );
 i = d;
 $display ( "Decimal D = %d", i );
 
 $display ( "E = %8b", e );
 i = e;
 $display ( "Decimal E = %d", i );
 end // main
endmodule // Guia_0102