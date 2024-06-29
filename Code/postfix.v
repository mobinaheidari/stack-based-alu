`timescale 1ns / 1ps

module postfix(input [7:0]infix,
					input clk,
					output reg [7:0]postfix);

reg [7:0] in,in2 ;
wire [7:0] out,out2;
reg [2:0] opcode,opcode2;
wire overflow,overflow2;
wire [7:0]index,index2;
stack #(8) s1 (in, out,opcode,overflow,index);
stack #(8) s2 (in2, out2,opcode2,overflow2,index2);
integer l=0;
integer k=0;
reg [7:0] temp;

always @ (infix)
begin
	if (infix != "+"&& infix!="*"&&infix!="=")
	begin
	  in= infix;
	  opcode=6;
	  postfix=in;
	  	
	end
	else if (infix == "*")
	begin				
		in2=infix;
		opcode2=6;
		temp="*";
	end	
	else if(infix=="+")
	begin
		if(temp=="*")k=1;


			in2 = infix;
			opcode=6;
		temp="+";
	end
	else if(infix =="=")begin
			k=1;
	end
end	

always @(posedge clk)
begin
	if( k==1)
	begin
		begin
			if(index2>=0)
			begin
				opcode2=7;
				opcode=6;
				in=out2;
				postfix=out2;
			end
			else 
			begin
				k=0;
			end
		end
	
	end
end
endmodule