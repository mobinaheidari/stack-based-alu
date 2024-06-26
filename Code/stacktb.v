
module tb_stack;

  // Inputs
  reg [7:0] in;
  reg [2:0] opcode;
  
  // Outputs
  wire [7:0] out;
  wire overflow;
  wire [7:0]index;
  
  // Instantiate the stack module
  stack #(8) mystack  (
    .in(in),
    .out(out),
    .opcode(opcode),
    .overflow(overflow),
    .index(index)
  );
  
 
  initial begin
    
    in = 1;
    opcode = 6;
    #10;
    in = 2;
    opcode = 6;
    #10;
    in = 30000;
    opcode = 6;
    #10;
    in = 4000;
    opcode = 6;
    #10;
    in = 5;
    opcode = 6;
    #10;
    opcode = 7;
    #10;
    opcode = 4;
    #10; 
    opcode = 5;
    #10; 
    opcode =4;
    #10;
    
    $display("Final output: %d", out);
    $finish;
  end
endmodule
