`timescale 1ns/1ps
module tb_mul2;
    reg signed [3:0] a;
    reg signed [1:0] b;
    wire signed [3:0] c;
    reg clk;
    reg reset;

    mul2 uut (a, b, c, clk, reset);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1;
        a = 0;
        b = 0;
        @(posedge clk);
        @(posedge clk);
        reset = 0;

        @(posedge clk);
        a = -4'sd3;
        b = -2'sd1;
        @(posedge clk);
        a = -4'sd4;
        b = -2'sd2;
        @(posedge clk);
        a = -4'sd0;
        b = -2'sd3;
        @(posedge clk);
        a = -4'sd2;
        b = -2'sd1;
        @(posedge clk);
        @(posedge clk);

        $finish;
    end

    always @(posedge clk)
        $display("t=%0t reset=%b a=%d b=%d c=%d", $time, reset, a, b, c);
endmodule
