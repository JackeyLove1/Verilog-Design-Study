// 三选八多路选择器

module Mux_8 (
    input[2 : 0]                    addr,
    input[WIDTH-1 : 0]              in1, in2, in3, in4, in5, in6, in7, in8,
    input                           nCS,
    output reg[WIDTH-1 : 0]         Mount,
    parameter                       WIDTH = 8   
);

always @(*) begin
    if(! nCS)
        case(addr)
        3'b000 : Mount = in1;
        3'b001 : Mount = in2;
        3'b010 : Mount = in3;
        3'b011 : Mount = in4;
        3'b100 : Mount = in5;
        3'b101 : Mount = in6;
        3'b110 : Mount = in7;
        3'b111 : Mount = in8;
        endcase
    else 
        Mount = 0;
end
    
endmodule