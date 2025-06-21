// Code your testbench here
// or browse Examples
module alu_8bit_tb;
  logic [7:0] a,b;
  logic [3:0] op_code;
  logic [7:0] result;
  logic zero;
  
  alu_8bit dut(
    .a(a),
    .b(b),
    .op_code(op_code),
    .result(result),
    .zero(zero));
  
  initial begin
    $display(" a         b         op    result    zero");
    $display("----------------------------------");
        a = 8'h0F; b = 8'hF0;

    op_code = 4'b0000; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // AND
    op_code = 4'b0001; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // OR
    op_code = 4'b0010; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // ADD
    op_code = 4'b0011; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // SUB
    op_code = 4'b0100; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // SHIFT LEFT
    op_code = 4'b0101; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // SHIFT RIGHT
    op_code = 4'b0110; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // XOR
    op_code = 4'b0111; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // SLT
    op_code = 4'b1000; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // EQ
    op_code = 4'b1001; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // NAND
    op_code = 4'b1010; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // NOR
    op_code = 4'b1011; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // XNOR
    op_code = 4'b1100; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // NOT A
    op_code = 4'b1101; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // INC A
    op_code = 4'b1110; #10; $display("%0t\t%h  %h  %b   %h    %b", $time, a, b, op_code, result, zero); // DEC B

    $finish;

  end
  
 
  
endmodule