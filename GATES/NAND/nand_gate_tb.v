module nand_gate_tb;
  reg a,b;
  wire y;
  nand_gate g(.a(a), . b(b), .y(y));
  initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
  initial begin
    $monitor("t=%t, a=%0b, b=%0b, y=%0b", $time,a,b,y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,nand_gate_tb);
  end
  endmodule
