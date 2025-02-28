/*
    Arquitetura de Computadores I - Guia_0303b.v
    1438796 - Daniel Matos Marques
*/

module Guia_0303; 
    // define data 
    reg signed [5:0] a = 5'b10101   ; // binary 
    reg signed [5:0] b = 6'b110101  ; // binary 
    reg signed [5:0] c = 6'b100110  ; // binary 
    reg signed [6:0] d = 7'b1010111 ; // binary 
    reg signed [6:0] e = 7'b1110101 ; // binary 
    // actions 
    initial begin : main 
        $display ( "Guia_0303 - Tests" ); 

        $display ( "a = %5b -> C1(a) = %5b = %d", a, ~a, ~(a-1) ); 

        $display ( "b = %6b -> C1(b) = %6b = %d", b, ~b, ~(b-1) ); 

        $display ( "c = %6b -> C1(c) = %6b = %8b", c, ~c, ~(c-1) );
        
        $display ( "d = %7b -> C1(d) = %7b = %8b", d, ~d, ~(d-1) );
        
        $display ( "e = %7b -> C1(e) = %7b = %x", e, ~e, ~(e-1) );

    end // main

endmodule // Guia_0303