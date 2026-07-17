module multiplier( num_1 , num_2 , ans , clk, reset );
    input signed [2:0] num_1 ;
    input signed [2:0] num_2 ;
    output reg signed [3:0] ans ;
    input clk, reset ;
 
    always @(posedge clk) begin
        if (reset)
            ans <= 0;
        else
            ans <= num_1 * num_2;
    end
 
endmodule
 
