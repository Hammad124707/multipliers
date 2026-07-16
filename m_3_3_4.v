//Multipliers: 
//1. Design a module that will multiply two 3-bit signed inputs and the output will be a 4-bit signed

module multiplier( num_1 , num_2 , ans , clk, reset );
input [2:0] num_1 ;
input [2:0] num_2 ;
output [3:0] ans ; 
input clk, reset ;

assign ans = num_1 * num_2 ;
//checking the github cha

endmodule 

