module mul2 (in1, in2, out, clk, reset);
    input signed [3:0] in1;
    input signed [1:0] in2;
    output reg signed [3:0] out;
    input clk;
    input reset;
 
    always @(posedge clk) begin
        if (reset)
            out <= 0;
        else
            out <= in1 * in2;
    end
endmodule
 
