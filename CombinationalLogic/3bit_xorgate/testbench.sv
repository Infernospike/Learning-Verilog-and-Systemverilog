// Code your testbench here
// or browse Examples
module xor_gate_3bit_tb;
  logic [2:0] a, b, c;
  logic [2:0] y;
  
  
  xor_gate_3bit dut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
  );
  
  initial begin
     $dumpfile("xor_gate_3bit.vcd"); 
    $dumpvars(0, xor_gate_3bit_tb); 
  end
  
  
  initial begin
    
    $display("Time\t a b c | y");
    $display("------------------");
    
   
    a = 3'b000; b = 3'b000; c = 3'b000; #10;
    $display("%0t\t %b %b %b | %b", $time, a, b, c, y);

    a = 3'b001; b = 3'b010; c = 3'b100; #10;
    $display("%0t\t %b %b %b | %b", $time, a, b, c, y);

    a = 3'b111; b = 3'b000; c = 3'b000; #10;
    $display("%0t\t %b %b %b | %b", $time, a, b, c, y);

    a = 3'b101; b = 3'b010; c = 3'b111; #10;
    $display("%0t\t %b %b %b | %b", $time, a, b, c, y);

    a = 3'b001; b = 3'b001; c = 3'b001; #10;
    $display("%0t\t %b %b %b | %b", $time, a, b, c, y);

    a = 3'b010; b = 3'b011; c = 3'b001; #10;
    $display("%0t\t %b %b %b | %b", $time, a, b, c, y);
   
  end
  
  
endmodule