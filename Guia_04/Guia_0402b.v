// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Código de pessoa: 1438796
// --------------------- 

// --------------------- 
// fxyz
// --------------------- 

// definir as expressões abcde
module fxyzA(output s, input x, y);
    assign s = ~x & ~y;  
endmodule

module fxyzB(output s, input x, y);
    assign s = 1'b1;
endmodule

module fxyzC(output s, input x, y);
    assign s = y;
endmodule

module fxyzD(output s, input x, y);
    assign s = ~x | ~y;  
endmodule

module fxyzE(output s, input x, y);
    assign s = ~(x ^ y); 
endmodule

module Guia_0402;
    reg x, y, z;
    wire s1, s2, s3, s4, s5; 

    //instanciar
    fxyzA FXYZA (s1, x, y); 
    fxyzB FXYZB (s2, x, y); 
    fxyzC FXYZC (s3, x, y); 
    fxyzD FXYZD (s4, x, y); 
    fxyzE FXYZE (s5, x, y); 

    initial begin
        $display("Guia_0402 - Testes");
        $display("x y | a b c d e");
        $display("-----------------");

        // todas as combinacoes de x y
        for (integer i = 0; i < 4; i = i + 1) begin
            {x, y} = i; 
            #10; // esperar terminar de printar
            $display("%b %b | %b %b %b %b %b", x, y, s1, s2, s3, s4, s5);
        end
        
        $finish;
    end
endmodule