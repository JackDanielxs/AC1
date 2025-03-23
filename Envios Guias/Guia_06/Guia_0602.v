// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Matricula: 800712
// --------------------- 

// --------------------- 
// Expressoes (MAXTERMOS)
// --------------------- 

module g0602 (output s1,
            output s2,
            output s3,
            output s4,
            output s5,
            input  X, Y, Z); // MAXTERMOS
    // a) F(X,Y,Z) = π M (1, 5, 7)
    assign s1 = (~X|Y|Z) & (~X|~Y|~Z) & (X|Y|~Z); 

    // b) F(X,Y,Z) = π M (0, 4, 6)
    assign s2 = (X|Y|Z) & (X|~Y|~Z) & (~X|Y|~Z);

    // c) F(X,Y,Z) = π M (1, 2, 3, 6)
    assign s3 = (~X|Y|~Z) & (~X|~Y|Z) & (X|~Y|Z) & (X|Y|~Z);

    // d) F(X,Y,Z) = π M (0, 1, 5, 6)
    assign s4 = (X|Y|Z) & (~X|~Y|Z) & (X|~Y|~Z) & (~X|Y|~Z);

    // e) F(X,Y,Z) = π M (0, 2, 4, 7)
    assign s5 = (X|~Y|~Z) & (X|Y|Z) & (~X|Y|~Z) & (~X|~Y|Z);

endmodule // g0602

// --------------------- 
// Guia_0602 
// --------------------- 

module Guia_0602; 
    reg   X = 0, Y = 0, Z = 0; 
    wire  s1, s2, s3, s4, s5; 
    integer i = 0; 
    // instâncias 
    g0602 EXP (s1, s2, s3, s4, s5, X, Y, Z); 

    // valores iniciais 
    initial begin: start 
        X=1'bx; Y=1'bx; Z=1'bx;   // indefinidos 
    end // start

    // parte principal 
    initial begin: main 
        // identificação 
        $display("Guia_0602 - Teste ");  
        
        // monitoramento 
        $display("\na.) F(X, Y, Z) = π M(1, 5, 7)");
        $display(" X  Y  Z = s1"); 
        $monitor("%2b %2b %2b = %2b", X, Y, Z, s1 ); 
        for (i = 0; i < 8; i = i + 1) begin
            { X, Y, Z } = i;
            #1;
        end // for

        $display("\nb.) F(X, Y, Z) = π M(0, 4, 6)");
        $display(" X  Y  Z = s2"); 
        $monitor("%2b %2b %2b = %2b", X, Y, Z, s2 ); 
        for (i = 0; i < 8; i = i + 1) begin
            { X, Y, Z } = i;
            #1;
        end // for

        $display("\nc.) F(X, Y, Z) = π M(1, 2, 3, 6)");
        $display(" X  Y  Z = s3"); 
        $monitor("%2b %2b %2b = %2b", X, Y, Z, s3 ); 
        for (i = 0; i < 8; i = i + 1) begin
            { X, Y, Z } = i;
            #1;
        end // for

        $display("\nd.) F(X, Y, Z) = π M(0, 1, 5, 6)");
        $display(" X  Y  Z = s4"); 
        $monitor("%2b %2b %2b = %2b", X, Y, Z, s4 );  
        for (i = 0; i < 8; i = i + 1) begin
            { X, Y, Z } = i;
            #1;
        end // for

        $display("\ne.) F(X, Y, Z) = π M(0, 2, 4, 7)");
        $display(" X  Y  Z = s5"); 
        $monitor("%2b %2b %2b = %2b", X, Y, Z, s5 );  
        for (i = 0; i < 8; i = i + 1) begin
            { X, Y, Z } = i;
            #1;
        end // for
    end // main

endmodule // Guia_0602
