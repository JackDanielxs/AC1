/*
   Arquitetura de Computadores I - Guia_0201b.v
   1438796 - Daniel Matos Marques
*/

module Guia_0201;
// define data
 real x = 0 ; // decimal
 real power2 = 1.0; // power of 2
 integer y = 7 ; // counter
 reg [7:0] b [0:4]; // binary (only fraction part, Big Endian)
  
// actions
 initial
 begin : main
 
  b[0] = 8'b00101000;
  b[1] = 8'b01101000;
  b[2] = 8'b10001000;
  b[3] = 8'b10111000;
  b[4] = 8'b11101000;
 
 $display ( "Guia_0201 - Testes" );
    for (integer i = 0; i < 5; i = i + 1) begin
        power2 = 1.0;
        y = 7;
        x = 0;
        while ( y >= 0 ) begin
            power2 = power2 / 2.0;
            if ( b[i][y] == 1 ) begin
                x = x + power2;
            end //end if
            $display ( "%d = %f", i + 1, x );
            y=y-1;
        end // end while
    end // end for
 end // main
endmodule // Guia_0201