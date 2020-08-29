// 四位二进制计数器
// 代码未经过测试

module counter(Q, clock, clear);

    output[3:0] Q;
    input clock, clear;
    
    reg[3:0] Q;

    always @(posedge clock or negedge clear) begin
        if (clear)
            Q <= 4'b0000;
        else
            Q <= Q + 1;
    end

endmodule