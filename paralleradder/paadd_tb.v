module paadd_tb;
reg [3:0]a,b;
reg ci;
wire [3:0]s;
wire c;

paadd uut(.a(a),.b(b),.ci(ci),.s(s),.c(c));
initial 
begin
    $monitor("a=%b,b=%b,ci=%b,s=%b,c=%b",a,b,ci,s,c);
    #10 a=4'b0000; b=4'b0000; ci=0;
    #10 a=4'b0101; b=4'b0101; ci=0;
    #10 a=4'b1010; b=4'b1010; ci=0;
    #10 a=4'b0101; b=4'b0101; ci=1;
    #10 a=4'b1111; b=4'b1111; ci=1;
    #10 a=4'b1111; b=4'b1111; ci=0;
    #10 $finish;
end
initial begin 
    $dumpfile("paadd.vcd");
    $dumpvars(0,paadd_tb);
end
endmodule
