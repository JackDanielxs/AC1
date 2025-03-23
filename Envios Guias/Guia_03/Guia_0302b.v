/*
    Arquitetura de Computadores I - Guia_0302b.v
    1438796 - Daniel Matos Marques
*/

module Guia_0302; 
    // define data 
    reg [5:0] a = 6'o23 ; // C1,6 (123(4)) -> octal
    reg [7:0] b = 8'hC4  ; // C1,8 (C4(16)) -> hex
    reg [5:0] c = 6'o12 ; // C2,6 (312(4)) -> octal
    reg [9:0] d = 10'o153 ; // C2,10 (153(8)) -> octal
    reg [7:0] e = 8'h7D  ; // C2,8 (7D(16)) -> hex
    reg [5:0] c1  = 0    ; // binary 
    reg [9:0] d1  = 0    ; // binary 
    reg [7:0] e1  = 0    ; // binary 
    // actions 
    initial begin : main 
        $display ( "Guia_0302 - Tests" );

        $display ( "a = %6b -> C1(a) = %6b", a, ~a ); 

        $display ( "b = %8b -> C1(b) = %8b", b, ~b ); 

        c1 = ~c+1; 
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, c1 );
        
        d1 = ~d+1; 
        $display ( "d = %10b -> C1(d) = %10b -> C2(d) = %10b", d, ~d, d1 );
        
        e1 = ~e+1; 
        $display ( "e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, e1 ); 
        
    end // main 

endmodule // Guia_0302