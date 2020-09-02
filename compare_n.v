// 8 位比较器

module compare_n(X, Y, XGY, XEY, XLY);

    input [WIDTH -1 : 0]           X, Y;
    output reg                     XGY, XEY, XLY;
    parameter                      WIDTH = 8

    always @(X or Y) begin
        if (X == Y)
            XEY = 1;
        else 
            XEY = 0;
        if (X > Y)
            XGY = 1;
        else
            XGY = 0;
        if (X < Y)
            XLY = 1;
        else
            XLY = 0;
    end

endmodule