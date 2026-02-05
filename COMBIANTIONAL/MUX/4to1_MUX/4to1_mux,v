module mux4to1 (
      input d0, d1, d2, d3, s0, s1,
    output y
);
     assign y = (s1==0 && s0==0) ? d0 :
               (s1==0 && s0==1) ? d1 :
               (s1==1 && s0==0) ? d2 :
                                 d3 ;
endmodule
