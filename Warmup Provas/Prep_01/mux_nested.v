module mux_nested (
    output s,
    input a, b, c
);
    wire not_a, not_b, not_c;
    wire mux1_out, mux2_out;

    not (not_a, a);
    not (not_b, b);
    not (not_c, c);

    // Primeiro nível de MUX
    assign mux1_out = (c == 1'b0) ? a : b;
    assign mux2_out = (c == 1'b0) ? not_b : not_a;

    // Segundo nível de MUX
    assign s = (not_c == 1'b0) ? mux2_out : mux1_out;
endmodule