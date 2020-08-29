// 3位加法器
// 代码未经过验证

module adder(cout, sum, a, b, cin);

    input[2 : 0]a, b;
    input cin;
    
    output out;
    output[2 : 0] sum;

    assign {cout, sum} = a + b + cin;

endmodule