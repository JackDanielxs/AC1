module f_sop_canonico (output f, input a, b, c, d);
  assign f = (~a & ~b & c & ~d) |
             (~a & b & c & ~d) |
             (~a & b & c & d)  |
             (a & b & ~c & ~d) |
             (a & b & c & ~d)  |
             (a & b & c & d);
endmodule