module not_gate_tb;
  reg a;
  wire y;
  not_gate g(.a(a), .y(y));
  initial begin
    a=0; #10;
    a=1; #10;
    $finish;
  end
  initial begin
    $monitor("t=%t, a=%0b, y=%0b", $time,a,y);
  end
  initial begin
  $dumpfile("dump.vcd");
    $dumpvars(0,tb_not_gate);
  end
endmodule
    
