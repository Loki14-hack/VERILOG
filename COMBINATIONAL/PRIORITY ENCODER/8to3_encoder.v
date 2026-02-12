module priority_encoder8to3(
    input  [7:0] y,
    output reg [2:0] a,
    output reg valid
);
always @(*) begin
    valid = 1'b1;
    if (y[7])       a = 3'b111;
    else if (y[6])  a = 3'b110;
    else if (y[5])  a = 3'b101;
    else if (y[4])  a = 3'b100;
    else if (y[3])  a = 3'b011;
    else if (y[2])  a = 3'b010;
    else if (y[1])  a = 3'b001;
    else if (y[0])  a = 3'b000;
    else begin
        a = 3'b000;
        valid = 1'b0;
    end
end
endmodule
