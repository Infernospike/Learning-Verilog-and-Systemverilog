// Code your testbench here
// or browse Examples
module orgate_3bit_tb;
  
  logic [2:0] a, b, c;
  logic [2:0] y;
  
  orgate_3bit dut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
  );
  
   initial begin
     $dumpfile("orgate_3bit.vcd"); 
    $dumpvars(0, orgate_3bit_tb); 
  end
  
  initial begin
    $display("Time\t a b c | y");
    $display("-------------------");
    
    a = 3'b000; b = 3'b000; c =3'b000; #10;
    
    $display("%0t\t %b %b %b | %b", $time, a, b, c,y);
    
    a = 3'b100; b = 3'b000; c = 3'b000; #10;
    
    $display("%0t\t %b %b %b | %b", $time, a, b, c,y);
    
    a = 3'b000; b = 3'b010; c = 3'b001; #10;
    
    $display("%0t\t %b %b %b | %b", $time, a, b, c,y);
    
    a = 3'b111; b = 3'b111; c = 3'b111; #10;
    
     $display("%0t\t %b %b %b | %b", $time, a, b, c,y);
    
    $finish;
  end
  
endmodule

