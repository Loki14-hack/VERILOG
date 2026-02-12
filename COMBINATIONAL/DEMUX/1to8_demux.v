module de_mux1to8 (
  input d,a,b,c,output y0, y1,y2,y3,y4,y5,y6,y7);
  assign y0 = d&(~a)&(~b)&(~c);
  assign y1 = d&(~a)&(~b)&(c);
  assign y2 = d&(~a)&(b)&(~c);
  assign y3 = d&(~a)&(b)&(c);
  assign y4 = d&(a)&(~b)&(~c);
  assign y5 = d&(a)&(~b)&(c);
  assign y6 = d&(a)&(b)&(~c);
  assign y7 = d&(a)&(b)&(c);
endmodule
