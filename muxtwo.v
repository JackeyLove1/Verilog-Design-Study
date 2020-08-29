// 二选一选择器
// 代码未经过验证

module muxtwo(out, a, b, sel);

    input a, b;
    output out;

    reg out;
    
    always @(sel or a or b) begin
        if( !sel ) out = a;
        else out = b;
    end

endmodule