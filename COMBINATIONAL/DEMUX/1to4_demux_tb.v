module de_mux1to4_tb;
    reg d,a,b;
    wire y0,y1,y2,y3;
  de_mux1to4 uut (.d(d), .a(a), .b(b), .y0(y0),.y1(y1), .y2(y2), .y3(y3));
initial begin
        d=1; a=0; b=0; #10;  
        d=1; a=0; b=1; #10;   
        d=1; a=1; b=0; #10;  
        d=1; a=1; b=1; #10; 
        $finish;
end
  initial begin
    $monitor("Time=%0t | d=%b | a=%b, b=%b | y0=%b y1=%b y2=%b y3=%b ",$time,d, a,b, y0, y1, y2, y3);
  end
 initial begin
   $dumpfile("de_mux1to4.vcd");
   $dumpvars(0, de_mux1to4_tb);
    end
endmodule

