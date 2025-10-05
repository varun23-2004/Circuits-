module fadd_d (a,b,ci,s,c);
input a,b,ci;
output reg s,c;

always @(*)
begin 
	s=a^b^ci;
	c=(a&b)|(b&ci)|(a&ci);
end
endmodule 
