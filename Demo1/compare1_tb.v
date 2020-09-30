`timescale 1ns/1ns
`include "./compare1.v"

module t;
reg a,b;
wire equal;
initial 
    begin
        a = 0
        b = 0
        #100 a = 0; b = 1;
        #100 a = 1; b = 0;
        #100 a = 1; b = 0;
        #100 a = 0; b = 0;
        #100 $stop;
    end
    compare1 m(.equal(equal), .a(a), .b(b));

endmodule