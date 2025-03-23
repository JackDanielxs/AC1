// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Matricula: 800712
// --------------------- 

// --------------------- 
// Expressoes (MAXTERMOS)
// --------------------- 

module g0604 (output s1,
            output s2,
            output s3,
            output s4,
            output s5,
            input  X, Y, W, Z); // MAXTERMOS 

    // a) F(X, Y, W, Z) = π M(2, 5, 7, 13)
    assign s1 = (~X|~Y|W|~Z) & (~X|Y|~W|~Z) & (X|Y|W|Z) & (X|~Y|~W|Z);

    // b) F(X, Y, W, Z) = π M(4, 6, 9, 11, 14)
    assign s2 = (~X|~Y|W|Z) & (X|~Y|~W|~Z) & (~X|Y|W|~Z) & (~X|Y|~W|Z) & (X|Y|~W|~Z);

    // c) F(X, Y, W, Z) = π M(4, 7, 8, 10, 12)
    assign s3 = (~X|~Y|W|~Z) & (X|~Y|W|Z) & (~X|Y|~W|Z) & (X|Y|~W|~Z) & (~X|~Y|~W|Z);

    // d) F(X, Y, W, Z) = π M(1, 5, 9, 11, 13, 15)
    assign s4 = (~X|Y|~W|Z) & (X|~Y|W|~Z) & (~X|Y|~W|~Z) & (X|~Y|W|Z) & (~X|~Y|W|~Z) & (X|~Y|~W|Z);

    // e) F(X, Y, W, Z) = π M(2, 3, 6, 7, 11, 13, 14)
    assign s5 = (~X|~Y|W|~Z) & (~X|~Y|W|Z) & (X|Y|~W|~Z) & (X|Y|~W|Z) & (~X|~Y|~W|Z) & (X|Y|W|~Z) & (~X|Y|W|Z);

endmodule // g0604

// --------------------- 
// Guia_0604 
// --------------------- 

module Guia_0604; 
    reg   X = 0, Y = 0, W = 0, Z = 0; 
    wire  s1, s2, s3, s4, s5; 
    integer i = 0; 
    // instâncias 
    g0604 EXP (s1, s2, s3, s4, s5, X, Y, W, Z); 

    // valores iniciais 
    initial begin: start 
        X=1'bx; Y=1'bx; W=1'bx; Z=1'bx;   // indefinidos 
    end // start

    // parte principal 
    initial begin: main 
        // identificação 
        $display("Guia_0604 - Teste ");  
        
        // monitoramento 
        $display("\na.) F(X, Y, W, Z) = π M(2, 5, 7, 13)");
        $display(" X  Y  W  Z = s1"); 
        $monitor("%2b %2b %2b %2b = %2b", X, Y, W, Z, s1 ); 
        for (i = 0; i < 16; i = i + 1) begin
            { X, Y, W, Z } = i;
            #1;
        end // for

        $display("\nb.) F(X, Y, W, Z) = π M(4, 6, 9, 11, 14)");
        $display(" X  Y  W  Z = s2"); 
        $monitor("%2b %2b %2b %2b = %2b", X, Y, W, Z, s2 ); 
        for (i = 0; i < 16; i = i + 1) begin
            { X, Y, W, Z } = i;
            #1;
        end // for

        $display("\nc.) F(X, Y, W, Z) = π M(4, 7, 8, 10, 12)");
        $display(" X  Y  W  Z = s3"); 
        $monitor("%2b %2b %2b %2b = %2b", X, Y, W, Z, s3 ); 
        for (i = 0; i < 16; i = i + 1) begin
            { X, Y, W, Z } = i;
            #1;
        end // for

        $display("\nd.) F(X, Y, W, Z) = π M(1, 5, 9, 11, 13, 15)");
        $display(" X  Y  W  Z = s4"); 
        $monitor("%2b %2b %2b %2b = %2b", X, Y, W, Z, s4 );  
        for (i = 0; i < 16; i = i + 1) begin
            { X, Y, W, Z } = i;
            #1;
        end // for

        $display("\ne.) F(X, Y, W, Z) = π M(2, 3, 6, 7, 11, 13, 14)");
        $display(" X  Y  W  Z = s5"); 
        $monitor("%2b %2b %2b %2b = %2b", X, Y, W, Z, s5 );  
        for (i = 0; i < 16; i = i + 1) begin
            { X, Y, W, Z } = i;
            #1;
        end // for
    end // main

endmodule // Guia_0604
