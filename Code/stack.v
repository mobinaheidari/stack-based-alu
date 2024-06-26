module stack #(parameter WIDTH = 8) (
    input wire [WIDTH-1:0] in,
    output reg [WIDTH-1:0] out,
    input wire [2:0] opcode,
    output reg overflow,
    output reg [WIDTH-1:0] index
);

    reg [WIDTH-1:0] stack[0:50];
    reg [WIDTH-1:0]maxvalue ={WIDTH{1'b1}};
    initial index = -1;
    initial overflow=0;

    always @(*) begin
        overflow = 0;
        if (opcode == 4 && index != 0) begin
            out = stack[index] + stack[index-1];
             if ((stack[index] !=0 || stack[index-1] !=0 ) && out == 0) begin
            overflow = 1;
              end
        end 
        else if (opcode == 5 && index != 0) begin
            out = stack[index] * stack[index-1];
             if (stack[index] !=0 && stack[index-1] !=0 && out == 0) begin
            overflow = 1;
             end
        end 
        else if (opcode == 6 && index != 50) begin
            index = index + 1;
            stack[index] = in;
        end
        else if (opcode == 7 && index != 0) begin
            out = stack[index];
            index = index - 1;
        end
    end

endmodule
