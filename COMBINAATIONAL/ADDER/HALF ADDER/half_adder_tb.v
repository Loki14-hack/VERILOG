module tb_half_add;
  reg a,b;
  wire sum,carry;
  half_add hf(.a(a), .b(b), .sum(sum), .carry(carry));
  initial begin
    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
  initial begin
    $monitor("t=%t | a=%0b, b=%0b | sum=%0b, carry=%0b",$time,a,b,sum,carry);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_half_add);
  end
endmodule
