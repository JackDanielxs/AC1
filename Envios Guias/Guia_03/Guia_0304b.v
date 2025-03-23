/*
    Arquitetura de Computadores I - Guia_0304b.v
    1438796 - Daniel Matos Marques
*/

module Guia_0304; 
    // define data 
    reg signed [7:0] a = 0 ; // binary 
    reg signed [7:0] b = 0 ; // binary 
    reg signed [7:0] bf = 0 ; // binary 
    reg signed [7:0] c = 0 ; // binary 
    reg signed [9:0] d = 0 ; // binary 
    reg signed [11:0] e = 0 ; // binary
    
    reg signed [7:0] x = 0 ; // binary 
    reg signed [7:0] xf = 0 ; // binary 
    reg signed [7:0] y = 0 ; // binary 
    reg signed [7:0] yf = 0 ; // binary 
    // actions 
    initial begin : main 
        $display ( "Guia_0304 - Tests\n" );
        
        x = 8'b1111011; // 11101(2)
        y = 8'b1101101; // 1101(2)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        a = x - y; 
        $display ( "a = x - y = %8b - %8b = %8b(2)\n", x, y, a );

        x = 8'b10100001; // 101,101(2)
        y = 8'b00001010; // 10,01(2)
        xf = 8'b01010000;
        yf = 8'b11000000;
        $display ( "x = %8b,%8b", x, xf ); 
        $display ( "y = %8b,%8b", y, yf ); 
        b = x - y;
        bf = xf - yf; 
        $display ( "b = x - y = %8b,%8b - %8b,%8b = %8b,%8b(2)\n", x, xf, y, yf, b, bf);

        x = 8'b110101; // 321(4)
        y = 8'b100011; // 213(4)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        c = x - y; 
        $display ( "c = x - y = %8b - %8b = %d%d%d(4)\n", x, y, c[5:4],c[3:2],c[1:0] );

        x = 10'o354; // 354(8)
        y = 10'o265; // 265(8)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        d = x - y; 
        $display ( "d = x - y = %8b - %8b = %o(8)\n", x, y, d );

        x = 16'h6A2; // 6A2(16)
        y = 16'hC14; // C14(16)
        $display ( "x = %8b = %d", x, x ); 
        $display ( "y = %8b = %d", y, y ); 
        e = x - y; 
        $display ( "e = x - y = %8b - %8b = %x(16)\n", x, y, e );

    end // main 

endmodule // Guia_0304
