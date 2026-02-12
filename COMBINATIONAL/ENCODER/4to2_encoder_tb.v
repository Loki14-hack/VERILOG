module tb_encoder_4to2;
reg [3:0] I;
wire [1:0] Y;
encoder_4to2 uut(I, Y);
initial begin
$dumpfile("encoder_4to2.vcd");
$dumpvars(0, tb_encoder_4to2);
$monitor("Time=%0t I=%b Y=%b", $time, I, Y);
I = 4'b0001; #10;
I = 4'b0010; #10;
I = 4'b0100; #10;
I = 4'b1000; #10;
I = 4'b0000; #10;
$finish;
end
endmodule
