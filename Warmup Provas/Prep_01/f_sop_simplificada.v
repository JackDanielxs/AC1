module f_sop_simplificada (output f, input a, b, c, d);
  assign f = (c & ~d) | (a & b & c) | (~a & b & c);
endmodule