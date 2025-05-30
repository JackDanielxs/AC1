module f_sop_nand (output f, input a, b, c, d);
  wire t1, t2, t3;
  wire p1, p2, p3;

  nand(t1, c, ~d);        // t1 = ~(c & ~d)
  nand(t2, a, b, c);      // t2 = ~(a & b & c)
  nand(t3, ~a, b, c);     // t3 = ~(~a & b & c)

  nand(f, t1, t2, t3);    // f = ~(t1 & t2 & t3)
endmodule