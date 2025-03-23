// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Código de pessoa: 1438796
// --------------------- 

// --------------------- 
// fxyz
// --------------------- 

// definir as expressões abcde
module fxyzA(output s, input x, y, z); 
    assign s = (~x) & ~(y | ~z);
endmodule

module fxyzB(output s, input x, y, z);
    assign s = ~(~x | y) & z;
endmodule

module fxyzC(output s, input x, y, z);
    assign s = ~(~x & ~y) & ~z;
endmodule

module fxyzD(output s, input x, y, z);
    assign s = ~(x & ~y) & z;
endmodule

module fxyzE(output s, input x, y, z);
    assign s = (~x | ~y) & (y | ~z);
endmodule

module Guia_0401;
    reg x, y, z;
    wire s1, s2, s3, s4, s5; 

    //instanciar
    fxyzA FXYZA (s1, x, y, z); 
    fxyzB FXYZB (s2, x, y, z); 
    fxyzC FXYZC (s3, x, y, z); 
    fxyzD FXYZD (s4, x, y, z); 
    fxyzE FXYZE (s5, x, y, z); 

    initial begin
        $display("Guia_0401 - Testes");
        $display("x y z | a b c d e");
        $display("-----------------");

        // todas as combinacoes de x y z
        for (integer i = 0; i < 8; i = i + 1) begin
            {x, y, z} = i; 
            #10; // esperar terminar de printar
            $display("%b %b %b | %b %b %b %b %b", x, y, z, s1, s2, s3, s4, s5);
        end
        
        $finish;
    end
endmodule