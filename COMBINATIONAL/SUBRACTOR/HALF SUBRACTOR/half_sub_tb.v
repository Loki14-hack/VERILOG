module half_sub_tb;
  reg a,b;
  wire d,br;
  half_sub dut(.a(a),.b(b),.diff(d),.borr(br));
  initial begin
    a=0;b=0; #10
    a=0;b=1; #10
    a=1;b=0; #10 
    a=1;b=1; #10 
    $finish;
  end
  initial begin
    $monitor(" time=%0t  ||A=%b B=%b ||d=%b br=%b",$time,a,b,d,br);
  end
  initial begin
   $dumpfile("half_sub.vcd");
    $dumpvars(0,half_sub_tb);
  end
endmodule
