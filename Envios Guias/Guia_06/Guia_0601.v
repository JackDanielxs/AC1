// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Matricula: 800712
// --------------------- 

// --------------------- 
// Expressoes
// --------------------- 

module g0601 (output s1,
            output s2,
            output s3,
            output s4,
            output s5,
            input  x, y, z); // mintermos 
    // Definindo as expressões para cada função f(x, y, z) baseada nas somas de mintermos

    // a) f(x, y, z) = ∑ m(1, 5, 7)
    assign s1 = (x & ~y & z) | (~x & y & z) | (~x & ~y & z); 

    // b) f(x, y, z) = ∑ m(0, 4, 6)
    assign s2 = (~x & ~y & ~z) | (x & ~y & ~z) | (x & y & ~z);

    // c) f(x, y, z) = ∑ m(1, 2, 3, 6)
    assign s3 = (x & ~y & z) | (~x & y & z) | (~x & ~y & z) | (x & y & ~z);

    // d) f(x, y, z) = ∑ m(1, 2, 5, 6)
    assign s4 = (x & ~y & z) | (~x & y & z) | (x & y & ~z) | (x & ~y & ~z);

    // e) f(x, y, z) = ∑ m(0, 2, 4, 7)
    assign s5 = (~x & ~y & ~z) | (~x & ~y & z) | (x & ~y & ~z) | (~x & y & z);

endmodule // g0601

// --------------------- 
// Guia_0601 
// --------------------- 

module Guia_0601; 
    reg   x = 0, y = 0, z = 0; 
    wire  s1, s2, s3, s4, s5; 
    integer i = 0; 
    // instancias 
    g0601 EXP (s1, s2, s3, s4, s5, x, y, z); 

    // valores iniciais 
    initial begin: start 
        x=1'bx; y=1'bx; z=1'bx;   // indefinidos 
    end // start

    // parte principal 
    initial begin: main 
        // identificacao 
        $display("Guia_0601 - Teste ");  
        
        // monitoramento 
        $display("\na.) f(x, y, z) = ∑ m(1, 5, 7)");
        $display(" x  y  z = s1"); 
        $monitor("%2b %2b %2b = %2b", x, y, z, s1 ); 
        for (i = 0; i < 8; i = i + 1) begin
            { x, y, z } = i;
            #1;
        end // for

        $display("\nb.) f(x, y, z) = ∑ m(0, 4, 6)");
        $display(" x  y  z = s2"); 
        $monitor("%2b %2b %2b = %2b", x, y, z, s2 ); 
        for (i = 0; i < 8; i = i + 1) begin
            { x, y, z } = i;
            #1;
        end // for

        $display("\nc.) f(x, y, z) = ∑ m(1, 2, 3, 6)");
        $display(" x  y  z = s3"); 
        $monitor("%2b %2b %2b = %2b", x, y, z, s3 ); 
        for (i = 0; i < 8; i = i + 1) begin
            { x, y, z } = i;
            #1;
        end // for

        $display("\nd.) f(x, y, z) = ∑ m(1, 2, 5, 6)");
        $display(" x  y  z = s4"); 
        $monitor("%2b %2b %2b = %2b", x, y, z, s4 );  
        for (i = 0; i < 8; i = i + 1) begin
            { x, y, z } = i;
            #1;
        end // for

        $display("\ne.) f(x, y, z) = ∑ m(0, 2, 4, 7)");
        $display(" x  y  z = s5"); 
        $monitor("%2b %2b %2b = %2b", x, y, z, s5 );  
        for (i = 0; i < 8; i = i + 1) begin
            { x, y, z } = i;
            #1;
        end // for
    end // main

endmodule // Guia_0601 
