module tb_d_latch;
    reg d;
    reg en;
    wire q;
    d_latch uut (.d(d),.en(en), .q(q)  );
    initial begin
        $dumpfile("d_latch.vcd");
        $dumpvars(0, tb_d_latch);
        $monitor("Time=%0t | EN=%b D=%b Q=%b", $time, en, d, q);
        d = 0; 
        en = 0
        #10 d = 1;      
        #10 en = 1;    
        #10 d = 0;    
        #10 en = 0;     
        #10 d = 1;      
        #10 en = 1;    
        #20 $finish;
    end
endmodule
