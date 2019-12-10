module comparator4 (
	input [0:3]a,
	input [0:3]b,
	output g,
	output e,
	output l
);

reg g;
reg e;
reg l;

always @(a or b) 
begin 
	if(a > b) 
	begin
		 g = 1'b1;
		 e = 1'b0;
		 l = 1'b0;
	end 

	else if(a == b)
	begin
		 g = 1'b0;
		 e = 1'b1;
		 l = 1'b0;
	end

	else if(a < b)
	begin 
		 g = 1'b0;
		 e = 1'b0;
		 l = 1'b1;
	end
end

endmodule