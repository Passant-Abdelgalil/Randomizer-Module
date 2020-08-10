module Randomizer(input clk, input reset,input load,input wire[15:1] seed,
		input enable, input d,output reg q,output reg[15:1]check);

reg [15:1] r_reg;
reg[15:1] r_next;
reg out;
initial begin 
r_reg=15'b011011100010101;
end 

always @(posedge clk) 
begin
	check=r_reg;

	if(load)
	begin
		r_reg=seed;
	end

	if(reset)
	begin
		r_reg=15'b011011100010101;
	end

	if(enable)
	begin 
		out=r_reg[2]^r_reg[1];
		r_next={out,r_reg[15:2]};
		r_reg<=r_next;
	end

	q=out^d; 
end
endmodule
