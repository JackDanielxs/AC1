// ---------------------
// TRUTH TABLE 
// Nome: Daniel Matos Marques
// Código de pessoa: 1438796 
// --------------------- 

// --------------------- 
// SoP 
// --------------------- 

//declarar alternativas
module f_a (input x, y, z, output f);
    assign f = (x == 0 && y == 0 && z == 1) || (x == 0 && y == 1 && z == 0) || 
               (x == 1 && y == 1 && z == 0) || (x == 1 && y == 1 && z == 1);
endmodule

module f_b (input x, y, z, output f);
    assign f = (x == 0 && y == 1 && z == 0) || (x == 1 && y == 0 && z == 1) ||
               (x == 1 && y == 1 && z == 0) || (x == 1 && y == 1 && z == 1);
endmodule

module f_c (input x, y, w, z, output f);
    assign f = (x == 0 && y == 0 && w == 0 && z == 1) || (x == 0 && y == 0 && w == 1 && z == 0) ||
               (x == 0 && y == 1 && w == 0 && z == 1) || (x == 1 && y == 0 && w == 1 && z == 1) ||
               (x == 1 && y == 1 && w == 1 && z == 0) || (x == 1 && y == 1 && w == 0 && z == 1);
endmodule

module f_d (input x, y, w, z, output f);
    assign f = (x == 0 && y == 0 && w == 0 && z == 1) || (x == 0 && y == 0 && w == 1 && z == 0) ||
               (x == 0 && y == 1 && w == 0 && z == 1) || (x == 0 && y == 1 && w == 1 && z == 1) ||
               (x == 1 && y == 1 && w == 0 && z == 1) || (x == 1 && y == 0 && w == 1 && z == 0);
endmodule

module f_e (input x, y, w, z, output f);
    assign f = (x == 0 && y == 0 && w == 0 && z == 0) || (x == 0 && y == 0 && w == 1 && z == 0) ||
               (x == 0 && y == 1 && w == 0 && z == 1) || (x == 1 && y == 1 && w == 1 && z == 0);
endmodule

module Guia_0403;
    reg x, y, z, w;
    wire f_a_out, f_b_out, f_c_out, f_d_out, f_e_out;

    // Instanciar
    f_a f1 (x, y, z, f_a_out);
    f_b f2 (x, y, z, f_b_out);
    f_c f3 (x, y, w, z, f_c_out);
    f_d f4 (x, y, w, z, f_d_out);
    f_e f5 (x, y, w, z, f_e_out);

    initial begin
        // Testa todas as combinações de valores para x, y, z, w
        $display("Guia_0403 - Testes"); 
        $display("x y z w | a b c d e");
        $display("----------------------------");
        for (x = 0; x <= 1; x = x + 1) begin
            for (y = 0; y <= 1; y = y + 1) begin
                for (z = 0; z <= 1; z = z + 1) begin
                    for (w = 0; w <= 1; w = w + 1) begin
                        #1;
                        $display("%b %b %b %b | %b %b %b %b %b", x, y, z, w, f_a_out, f_b_out, f_c_out, f_d_out, f_e_out);
                    end
                end
            end
        end
    end
endmodule