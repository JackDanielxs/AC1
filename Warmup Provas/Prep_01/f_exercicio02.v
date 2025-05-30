module f (output s, input x, y);
  wire w1, w2, w3, w4, w5;
  not NOT_1(w1, x);
  not NOT_2(w2, y);
  and AND_1(w3, y, w2);
  or  OR_1(w4, w1, x);
  not NOT_3(w5, w4);
  and AND_2(s, w3, w5);
endmodule