// 使用case语句实现四选一多路选择器
// 代码未经过测试

module mux4_to_1(out, i0, i1, i2, i3, s1, s2);

    // declear a variable
    input s1, s2;
    input i0, i1, i2, i3;
    output out;

    // declear out to reg
    reg out;

    always @(s1 or s2 or i0 or i1 or i2 or i3) begin
        case({s1, s0})
            2'b00 : out = i0;
            2'b01 : out = i1;
            2'b10 : out = i2;
            2'b11 : out = i3;
            default : out = 1'bx;
        endcase
    end

endmodule