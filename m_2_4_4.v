//
// Design a module that will multiply one 4-bit signed input and one 2 bit signed input and the output will be 4 bit signed. 

module mul2 (in1, in2 ,out) ; 
input signed[3:0] in1 ;
input signed [1:0] in2 ;
output signed [3:0] out ;
assign out = in1 * in2 ;
endmodule 

 

