/*
    Arquitetura de Computadores I - Guia_0305b.v
    1438796 - Daniel Matos Marques
*/

module Guia_0305; 
    // define data 
    reg signed [7:0] a = 0 ; // binary 
    reg signed [7:0] b = 0 ; // binary 
    reg signed [7:0] c = 0 ; // binary 
    reg signed [7:0] d = 0 ; // binary 
    reg signed [7:0] e = 0 ; // binary
    
    reg signed [7:0] x = 0 ; // binary 
    reg signed [7:0] y = 0 ; // binary 
    // actions 
    initial begin : main 
        $display ( "Guia_0305 - Tests\n" );
        
        x = 8'b110110; // 110110(2)
        y = 8'b001101; // 1101(2)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        a = x - y; 
        $display ( "a = x - y = %8b - %8b = %8b(2)\n", x, y, a );

        x = 8'b10110111; // 101,1011(2)
        y = 8'b00000100; // 3,4(8)
        $display ( "x = %8b", x ); 
        $display ( "y = %8b", y ); 
        b = x - y;
        $display ( "b = x - y = %8b - %8b = %8b(2)\n", x, y, b);

        x = 8'b00100011; // 23(14)
        y = 8'b00001110; // 3A(16)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        c = x - y; 
        $display ( "c = x - y = %8b - %8b = %x(16)\n", x, y, c );

        x = 8'hD3; // D3(16)
        y = 8'b1011101; // 1011101(2)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        d = x - y; 
        $display ( "d = x - y = %8b - %8b = %x(16)\n", x, y, d );

        x = 8'h5E; // 5E(16)
        y = 8'h3C; // 3C(16)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        e = x - y; 
        $display ( "e = x - y = %8b - %8b = %x(16)\n", x, y, e );

    end // main 

endmodule // Guia_0305

