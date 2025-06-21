
module alu_8bit (
  input logic [7:0] a,
  input logic [7:0] b,
  input logic [3:0] op_code,
  output logic [7:0] result,
  output logic zero);
  
  always_comb begin
    case(op_code) 
      4'b0000: result = a & b;
      4'b0001: result = a | b;
      4'b0010: result = a + b;
      4'b0011: result = a - b;
      4'b0100: result = a << 1;
      4'b0101: result = a >> 1;
      4'b0110: result = a ^ b;
      4'b0111: result = (a < b) ? 8'd1 : 8'd0; 
       4'b1000: result = (a == b) ? 8'd1 : 8'd0;    // EQ
        4'b1001: result = ~(a & b);                  // NAND
        4'b1010: result = ~(a | b);                  // NOR
        4'b1011: result = ~(a ^ b);                  // XNOR
        4'b1100: result = ~a;                        // NOT A
        4'b1101: result = a + 8'd1;                  // Increment A
        4'b1110: result = b - 8'd1;                  // Decrement B
        default: result = 8'd0;
    endcase
  end
  
  assign zero = (result == 8'd0);
endmodule

