`timescale 1ns/1ps
module tb_traffic_light;
    reg clk;
    reg rst;
    wire green;
    wire yellow;
    wire red;

    // Instantiate DUT
    traffic_light uut (
        .clk(clk),
        .rst(rst),
        .green(green),
        .yellow(yellow),
        .red(red)
    );

    // Clock: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("Trafficlight_tb.vcd");
        $dumpvars(0, tb_traffic_light);

        rst = 1;
        #20;
        rst = 0;

        // Run for several cycles to observe state transitions
        #400;
        $finish;
    end

    initial begin
        $display("time\trst\tgreen\tyellow\tred");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, rst, green, yellow, red);
    end
endmodule
