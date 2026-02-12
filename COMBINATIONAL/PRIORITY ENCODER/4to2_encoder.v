module priority_encoder4to2(input [3:0] y, output reg [1:0] a, output reg valid);
always @(*) begin
    valid = 1'b1;
    if (y[3])       a = 2'b11;
    else if (y[2])  a = 2'b10;
    else if (y[1])  a = 2'b01;
    else if (y[0])  a = 2'b00;
    else begin
        a = 2'b00;
        valid = 1'b0;
    end
end
endmodule
