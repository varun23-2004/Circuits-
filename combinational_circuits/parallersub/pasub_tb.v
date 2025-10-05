module pasub_tb;
reg [3:0]a,b;
reg c;
wire [3:0]d;
wire bo;

pasub dut (.a(a),.b(b),.c(c),.d(d),.bo(bo));
initial 
begin
    $monitor("a=%b, b=%b, c=%b || d=%b, bo=%b",a,b,c,d,bo);
    #10; a=4'b0000;b=4'b0000;c=0;
    #10; a=4'b0000;b=4'b0000;c=1;
    #10; a=4'b1111;b=4'b1111;c=0;
    #10; a=4'b1111;b=4'b1111;c=1;
    #10; a=4'b1010;b=4'b0101;c=0;
    #10; a=4'b1010;b=4'b0101;c=1;
    #10; a=4'b0101;b=4'b1010;c=0;
    #10; a=4'b0101;b=4'b1010;c=1;
    #10; $finish;
end
initial 
begin
    $dumpfile ("pasub.vcd");
    $dumpvars(0,pasub_tb);
end
endmodule
