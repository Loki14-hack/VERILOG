module de_mux1to8_tb;
    reg d,a,b,c;
    wire y0,y1,y2,y3,y4,y5,y6,y7;
  de_mux1to8 uut (.d(d), .a(a), .b(b), .c(c), .y0(y0), .y1(y1), .y2(y2), .y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
initial begin
        d=1; a=0; b=0; c=0; #10;  
        d=1; a=0; b=0; c=1; #10;   
        d=1; a=0; b=1; c=0; #10;  
        d=1; a=0; b=1; c=1; #10; 
        d=1; a=1; b=0; c=0; #10;  
        d=1; a=1; b=0; c=1; #10;   
        d=1; a=1; b=1; c=0; #10;  
        d=1; a=1; b=1; c=1; #10; 
        $finish;
end
  initial begin
    $monitor("Time=%0t | d=%b | a=%b, b=%b c=%b | y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b",$time,d, a,b,c, y0, y1, y2, y3,y4,y5,y6,y7);
  end
 initial begin
   $dumpfile("de_mux1to8.vcd");
   $dumpvars(0, de_mux1to8_tb);
    end
endmodule
