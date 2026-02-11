module dff_sync_rst_tb;
    reg d,clk,rst;
    wire q;
    dff_sync_rst dut (.d(d),.clk(clk),.rst(rst),.q(q));
    initial begin
        clk=0;rst=1;d=0;
        #10 rst=0; 
        #10 d=1;
        #10 d=0;
        #10 d=1;
        #10 rst=1; 
        #10 d=0;
        #10 d=1;
        #10 rst=0;
        #10 $finish;
    end
  initial begin
       $monitor("TIME=0%t  || CLK= %B  RST=%B  || D=%B  || Q= %B",$time,clk,rst,d,q);
  end
  initial begin
     clk=1;
    forever #5 clk=~clk;
  end
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0,dff_sync_rst_tb);
  end
endmodule
