`timescale 1ns / 1ps


module postfix_tb;

	reg [7:0] infix;

	reg clk;

	wire [7:0] postfix;
   
	postfix uut (
		.infix(infix), 
		.clk(clk), 
		.postfix(postfix)
     
	);

	initial begin
	
		infix = 0;
		clk = 0;
		#10;
      clk = 1;
		#30 infix = 3;		
		#30 infix = "+";		
		#30 infix = 4;
		#30 infix="*";
		#30 infix=2;
		#30 infix="+";
		#30 infix=1;
		#30 infix="=";
      #100 $stop;
	end
   always #5 clk = ~clk;     
endmodule