module fsub_d(a,b,c,d,bo);
input a,b,c;
output reg d,bo;
always @(*)
begin
    d=a^b^c;
    bo=(b&c)|(~a&(b|c));
end 
endmodule