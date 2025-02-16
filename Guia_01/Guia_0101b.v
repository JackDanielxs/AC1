/*
 Guia_0101.v
 1438796 - DANIEL MATOS MARQUES
*/
module Guia_0101;
// define data
 integer a = 27, b = 51, c = 725, d = 132, e = 360; // decimal
 reg [7:0] binario; // binary (bits - little endian)
// actions
 initial
 begin : main
 $display ( "Guia_0101b - Testes\n" );
 
 $display ( "A = %d" , a );
 binario = a;
 $display ( "Binario A = %8b" , binario );
 
 $display ( "B = %d" , b );
 binario = b;
 $display ( "Binario B = %8b" , binario );
 
 $display ( "C = %d" , c );
 binario = c;
 $display ( "Binario C = %8b" , binario );
 
 $display ( "D = %d" , d );
 binario = d;
 $display ( "Binario D = %8b" , binario );
 
 $display ( "E = %d" , e );
 binario = e;
 $display ( "Binario E = %8b" , binario );
 
 end // main
endmodule // Guia_0101