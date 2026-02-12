module tb_encoder8to3;
reg [7:0] y;
wire [2:0] a;
encoder8to3 uut (.y(y), .a(a));
initial begin
    $dumpfile("encoder8to3.vcd");
    $dumpvars(0, tb_encoder8to3);
    $monitor("Time=%0t y=%b a=%b", $time, y, a);
    y = 8'b00000000; #10;
    y = 8'b00000001; #10;
    y = 8'b00000010; #10;
    y = 8'b00000100; #10;
    y = 8'b00001000; #10;
    y = 8'b00010000; #10;
    y = 8'b00100000; #10;
    y = 8'b01000000; #10;
    y = 8'b10000000; #10;
    $finish;
end
endmodule
