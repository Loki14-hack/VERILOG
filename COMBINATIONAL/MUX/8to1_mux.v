module mux8to1 (
      input d0, d1, d2, d3, d4, d5, d6, d7, input s2, s1, s0,
    output y
);
      assign y = (s2==0 && s1==0 && s0==0) ? d0 :
            (s2==0 && s1==0 && s0==1) ? d1 :
            (s2==0 && s1==1 && s0==0) ? d2 :
            (s2==0 && s1==1 && s0==1) ? d3 :
            (s2==1 && s1==0 && s0==0) ? d4 :
            (s2==1 && s1==0 && s0==1) ? d5 :
            (s2==1 && s1==1 && s0==0) ? d6 :
                                          d7 ;
endmodule
