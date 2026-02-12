module mux4to1_tb;
    reg d0, d1, d2, d3, s0, s1;
    wire y;
  mux4to1 uut (.d0(d0), .d1(d1), .d2(d2), .d3(d3),
        .s0(s0),.s1(s1),.y(y));
initial begin
        d0=0; d1=1; d2=0; d3=1;
        s1=0; s0=0; #10;  
        s1=0; s0=1; #10;   
        s1=1; s0=0; #10;  
        s1=1; s0=1; #10; 
        $finish;
end
  initial begin
   $monitor("Time=%0t | s1=%b s0=%b | d0=%b d1=%b d2=%b d3=%b | y=%b",$time, s1, s0, d0, d1, d2, d3, y);
  end
 initial begin
   $dumpfile("mux4to1.vcd");
   $dumpvars(0, mux4to1_tb);
    end
endmodule
