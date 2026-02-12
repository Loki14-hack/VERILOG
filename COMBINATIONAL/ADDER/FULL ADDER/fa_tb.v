module tb_fa;
  reg a, b, cin;
  wire sum, carry;
  fa uut(.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  initial begin
    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;
    $finish;
  end
  initial begin
    $monitor("T=%1t| a=%b, b=%b, cin=%b, sum=%b, carry=%b",$time ,a,b,cin,sum,carry);
             end
             initial begin
               $dumpfile("fa.vcd");
               $dumpvars(0,tb_fa);
             end
             endmodule
