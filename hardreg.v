// 带清零端的4位寄存器
module hardreg (clk, clrb, d, q);

    input           clk, clrb;
    input[3:0]      d;
    output[3:0]     q;
    reg[3:0]        q;

    always @(posedge clk or posedge clrb) begin
        if(clrb)
            q <= 0;
        else
            q <= d;
    end

endmodule //hardreg