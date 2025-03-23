// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Matricula: 800712
// --------------------- 

// --------------------- 
// Expressoes (mintermos)
// --------------------- 

module g0603 (output s1,
            output s2,
            output s3,
            output s4,
            output s5,
            input  x, y, w, z); // mintermos 

    // a) f(x, y, w, z) = ∑ m(1, 2, 6, 8, 12, 14)
    assign s1 = (x&~y&~w&z) | (~x&y&~w&~z) | (~x&~y&w&z) | (x&~y&w&~z) | (~x&~y&w&~z) | (x&y&w&z);

    // b) f(x, y, w, z) = ∑ m(0, 1, 3, 7, 8, 12, 15)
    assign s2 = (~x&~y&~w&~z) | (x&~y&~w&z) | (~x&~y&~w&z) | (~x&~y&w&z) | (x&~y&w&~z) | (~x&~y&w&~z) | (x&~y&w&z);

    // c) f(x, y, w, z) = ∑ m(0, 1, 2, 7, 10, 11, 14, 15)
    assign s3 = (~x&~y&~w&~z) | (x&~y&~w&z) | (~x&~y&w&z) | (x&~y&w&~z) | (~x&y&~w&z) | (x&y&~w&z) | (~x&~y&w&z) | (x&y&w&z);

    // d) f(x, y, w, z) = ∑ m(2, 4, 5, 6, 10, 13, 14)
    assign s4 = (~x&~y&w&z) | (x&~y&w&~z) | (~x&y&~w&~z) | (x&y&~w&z) | (~x&y&w&~z) | (x&~y&w&z) | (~x&y&w&z);

    // e) f(x, y, w, z) = ∑ m(0, 1, 3, 5, 8, 9, 11, 13)
    assign s5 = (~x&~y&~w&~z) | (x&~y&~w&z) | (~x&~y&~w&z) | (~x&~y&w&~z) | (x&~y&~w&z) | (x&~y&~w&z) | (x&y&~w&z) | (x&~y&w&z);

endmodule // g0603

// --------------------- 
// Guia_0603 
// --------------------- 

module Guia_0603; 
    reg   x = 0, y = 0, w = 0, z = 0; 
    wire  s1, s2, s3, s4, s5; 
    integer i = 0; 
    // instâncias 
    g0603 EXP (s1, s2, s3, s4, s5, x, y, w, z); 

    // valores iniciais 
    initial begin: start 
        x=1'bx; y=1'bx; w=1'bx; z=1'bx;   // indefinidos 
    end // start

    // parte principal 
    initial begin: main 
        // identificação 
        $display("Guia_0603 - Teste ");  
        
        // monitoramento 
        $display("\na.) f(x, y, w, z) = ∑ m(1, 2, 6, 8, 12, 14)");
        $display(" x  y  w  z = s1"); 
        $monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s1 ); 
        for (i = 0; i < 16; i = i + 1) begin
            { x, y, w, z } = i;
            #1;
        end // for

        $display("\nb.) f(x, y, w, z) = ∑ m(0, 1, 3, 7, 8, 12, 15)");
        $display(" x  y  w  z = s2"); 
        $monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s2 ); 
        for (i = 0; i < 16; i = i + 1) begin
            { x, y, w, z } = i;
            #1;
        end // for

        $display("\nc.) f(x, y, w, z) = ∑ m(0, 1, 2, 7, 10, 11, 14, 15)");
        $display(" x  y  w  z = s3"); 
        $monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s3 ); 
        for (i = 0; i < 16; i = i + 1) begin
            { x, y, w, z } = i;
            #1;
        end // for

        $display("\nd.) f(x, y, w, z) = ∑ m(2, 4, 5, 6, 10, 13, 14)");
        $display(" x  y  w  z = s4"); 
        $monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s4 );  
        for (i = 0; i < 16; i = i + 1) begin
            { x, y, w, z } = i;
            #1;
        end // for

        $display("\ne.) f(x, y, w, z) = ∑ m(0, 1, 3, 5, 8, 9, 11, 13)");
        $display(" x  y  w  z = s5"); 
        $monitor("%2b %2b %2b %2b = %2b", x, y, w, z, s5 );  
        for (i = 0; i < 16; i = i + 1) begin
            { x, y, w, z } = i;
            #1;
        end // for
    end // main

endmodule // Guia_0603
