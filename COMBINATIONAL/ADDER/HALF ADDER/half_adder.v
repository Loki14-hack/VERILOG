module half_add(
  input a, input b, output sum,carry);
  assign sum=a^b;
  assign carry=a&b;
endmodule
