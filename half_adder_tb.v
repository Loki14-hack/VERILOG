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
    $monitor("Time=%20t | a=%0d, b=%0d | sum=%0d, carry=%0d",$time,a,b,sum,carry);
  end
endmodule
        

    
    
