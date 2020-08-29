// 描述交通信号灯的verilog模块
// 代码未有经过测试

module traffic_lights;

    reg clock, red, amber, green;
    
    parameter on = 1, off = 0, red_tics = 350, amber_tics = 30,
            amber_tics = 30, green_tics = 200;
    
    // initialize
    initial red = off;
    initial amber = off;
    initial green = off;

    // time control
    always 
        begin
            red = on;
            light(red, red_tics);
            green = on;
            light(green, green_tics);
            amber = on;
            light(amber, amber_tics);
        end

    // task 
    task light;
        output color;
        input [31:0] tics;
    begin
        repeat(tics)
            @(posedge clock);
        color = off;
    end
    endtask

    // make pluse
    always begin
        # 100 clock = 0;
        # 100 clock = 1;
    end

endmodule