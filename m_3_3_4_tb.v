module tb_muli_kh ;
reg [2:0] num_1 ;
reg [2:0] num_2 ;
wire [3:0] ans ;
reg clk ;
reg reset ;
multiplier tb_m (num_1 , num_2,  ans , clk , reset) ;

initial begin 
num_1 = 3'sd3 ;
num_2 = 3'sd0 ;
#20 ;
num_1 = 3'sd3 ;
num_2 = 3'sd2 ;
#10 ;
num_1 = 3'd2 ;
num_2 = 3'd1 ;
end
endmodule