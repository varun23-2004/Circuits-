`timescale 1ps/1ps
module casaadd_tb;
reg [3:0]a;
reg [3:0]b;
reg [3:0]cin;
wire [3:0]s;
wire [3:0]c;

casaadd uut (.a(a),.b(b),.cin(cin),.s(s),.c(c));
initial
begin
    $monitor($time, "a=%b b=%b cin=%b|| s=%b c=%b",a,b,cin,s,c);
    #10 a=1101;b=0001;cin=1000;
    #10 a=0;b=0010;cin=0001;
    #10 a=1011;b=1010;cin=1111;
    #10 $stop;
end
initial 
begin
    $dumpfile("casaadd.vcd");
    $dumpvars(0,casaadd_tb);
end
endmodule
