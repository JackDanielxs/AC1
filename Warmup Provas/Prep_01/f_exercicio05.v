module f_ex5 (output s, input a, b);
    wire nota, notb;
    wire nor_out, xnor_out;

    not(nota, a);
    not(notb, b);
    nor(nor_out, nota, notb);
    xnor(xnor_out, a, b);
    nand(s, xnor_out, nor_out);
endmodule
