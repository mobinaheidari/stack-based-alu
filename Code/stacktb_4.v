module tb_stack_4;
  reg [3:0] in;
  reg [2:0] opcode;
  wire [3:0] out;
  wire overflow;
  wire [3:0]index;
  stack #(4) mystack  (
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
    in = 30;
    opcode = 6;
    #10;
    in = 40;
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
