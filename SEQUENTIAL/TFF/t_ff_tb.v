module tb_t_flipflop;
    reg clk;
    reg rst;
    reg t;
    wire q;
 t_flipflop uut (.clk(clk),.rst(rst),.t(t),.q(q) );
 always #5 clk = ~clk;
 initial begin
   $monitor("T=%0t,clk=%b,rst=%b,t=%b,q=%b",$time,clk,rst,t,q);
   $dumpfile("dump.vcd"); 
   $dumpvars;
        clk = 0;
        rst = 1;
        t   = 0;
        #10 rst = 0;
        #10 t = 0;
        #20 t = 1;
        #40 t = 0;
        #20 t = 1;
        #40 $finish;
    end
endmodule
