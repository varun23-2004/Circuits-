module fsub(a,b,c,d,bo);
input a,b,c;
output reg d,bo;
always @(*)
begin
    d=a^b^c;
    bo=(b&c)|(~a&(b|c));
end
endmodule 

module pasub(a,b,c,d,bo);
input [3:0]a,b;
input c;
output [3:0]d;
output bo;

wire b1,b2,b3;

fsub s1(a[0],b[0],c,d[0],b1);
fsub s2(a[1],b[1],b1,d[1],b2);
fsub s3(a[2],b[2],b2,d[2],b3);
fsub s4(a[3],b[3],b3,d[3],bo);
endmodule 