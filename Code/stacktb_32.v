module tb_stack_32;
  reg [31:0] in;
  reg [2:0] opcode;
  wire [31:0] out;
  wire overflow;
  wire [31:0]index;
  stack #(32) mystack  (
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
    in = -30000000;
    opcode = 6;
    #10;
    in = 4000000;
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


