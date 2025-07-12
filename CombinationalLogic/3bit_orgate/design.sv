// Code your design here
module orgate_3bit( 
  input logic [2:0] a,
  input logic [2:0] b,
  input logic [2:0] c,
  output logic [2:0] y
);
  
  assign y = a | ( b | c);
  
endmodule

