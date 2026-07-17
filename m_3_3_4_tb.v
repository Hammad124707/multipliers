`timescale 1ns/1ps
module tb_muli_kh;
    reg signed [2:0] num_1;
    reg signed [2:0] num_2;
    wire signed [3:0] ans;
    reg clk;
    reg reset;

    multiplier tb_m (num_1, num_2, ans, clk, reset);

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        reset = 1;
        num_1 = 0;
        num_2 = 0;
        @(posedge clk);
        @(posedge clk);
        reset = 0;

        @(posedge clk);
        num_1 = 3'sd3;
        num_2 = 3'sd0;
        @(posedge clk);
        num_1 = 3'sd3;
        num_2 = 3'sd2;
        @(posedge clk);
        num_1 = 3'sd2;
        num_2 = 3'sd1;
        @(posedge clk);
        @(posedge clk);

        $finish;
    end

    always @(posedge clk)
        $display("t=%0t reset=%b num_1=%d num_2=%d ans=%d", $time, reset, num_1, num_2, ans);
endmodule