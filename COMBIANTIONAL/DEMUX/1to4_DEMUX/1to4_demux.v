
module de_mux1to4 (
  input d, a, b, output y0, y1,y2,y3);
  assign y0 = d&(~a)&(~b);
  assign y1 = d&(~a)&(b);
  assign y2 = d&(a)&(~b);
  assign y3 = d&(b)&(a);
endmodule

