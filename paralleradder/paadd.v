module fadd(a,b,ci,s,c);
input a,b,ci;
output reg s,c;
always @(*)
begin           
    s=a^b^ci;
    c=(a&b)|(b&ci)|(a&ci);
end 
endmodule 

module paadd(a,b,ci,s,c);
input [3:0]a,b;
input ci;
output [3:0]s;
output c;

wire c1,c2,c3;

fadd f1(a[0],b[0],ci,s[0],c1);
fadd f2(a[1],b[1],c1,s[1],c2);
fadd f3(a[2],b[2],c2,s[2],c3);
fadd f4(a[3],b[3],c3,s[3],c);
endmodule