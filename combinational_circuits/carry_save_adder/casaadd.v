module casaadd (a,b,cin,s,c);
input [3:0] a;
input [3:0] b;
input [3:0] cin;
output reg [3:0]s;
output reg [3:0]c;

always @(*)
begin
    s=a^b^cin;
    c=(a&b)|(b&cin)|(a&cin);
end
endmodule 