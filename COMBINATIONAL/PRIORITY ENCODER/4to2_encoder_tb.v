module tb_priority_encoder4to2;
reg [3:0] y;
wire [1:0] a;
wire valid;
priority_encoder4to2 uut (.y(y), .a(a), .valid(valid));
initial begin
    $dumpfile("priority_encoder4to2.vcd");
    $dumpvars(0, tb_priority_encoder4to2);
    $monitor("Time=%0t y=%b a=%b valid=%b", $time, y, a, valid);
    y = 4'b0000; #10;
    y = 4'b0001; #10;
    y = 4'b0011; #10;
    y = 4'b0101; #10;
    y = 4'b1000; #10;
    y = 4'b1111; #10;
    $finish;
end
endmodule
