module mux8to1_tb;
   reg d0, d1, d2, d3, d4, d5, d6, d7;
    reg s2, s1, s0;
    wire y;
  mux8to1 uut (.d0(d0), .d1(d1), .d2(d2), .d3(d3),
        .d4(d4), .d5(d5), .d6(d6), .d7(d7),
        .s2(s2), .s1(s1), .s0(s0),
        .y(y));
initial begin
        d0=0; d1=1; d2=0; d3=1;
        s2=0; s1=0; s0=0; #10;
        s2=0; s1=0; s0=1; #10;
        s2=0; s1=1; s0=0; #10;
        s2=0; s1=1; s0=1; #10;
        s2=1; s1=0; s0=0; #10;
        s2=1; s1=0; s0=1; #10;
        s2=1; s1=1; s0=0; #10;
        s2=1; s1=1; s0=1; #10;
        $finish;
end
  initial begin
    $monitor("Time=%0t | s2=%b s1=%b s0=%b | y=%b", $time, s2, s1, s0, y);
  end
 initial begin
   $dumpfile("mux8to1.vcd");
   $dumpvars(0, mux8to1_tb);
    end
endmodule
