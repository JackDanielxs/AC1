/*
    Arquitetura de Computadores I - Guia_0301b.v
    1438796 - Daniel Matos Marques
*/

module Guia_0301; 
    // define data 
    reg [5:0] a = 6'b101011;  // C1,6 (1011) -> 6 bits
    reg [7:0] b = 8'b111100;  // C1,8 (1100) -> 8 bits
    reg [5:0] c = 6'b100011;  // C2,6 (100011) -> 6 bits
    reg [6:0] d = 7'b101001;  // C2,7 (101001) -> 7 bits
    reg [7:0] e = 8'b111010;  // C2,8 (111010) -> 8 bits
    reg [5:0] z = 0;  // binary 
    reg [6:0] x = 0;  // binary 
    reg [7:0] y = 0;  // binary 
    
    // actions 
    initial begin : main 
        $display ( "Guia_0301 - Tests\n" ); 

        $display ( "a = %6b -> C1(a) = %6b", a, ~a );

        $display ( "b = %8b -> C1(b) = %8b", b, ~b ); 

        z = ~c + 1; 
        $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b", c, ~c, z ); 

        x = ~d + 1; 
        $display ( "d = %6b -> C1(d) = %6b -> C2(d) = %6b", d, ~d, x ); 

        y = ~e + 1; 
        $display ( "e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, y ); 
    end // main 

endmodule // Guia_0301