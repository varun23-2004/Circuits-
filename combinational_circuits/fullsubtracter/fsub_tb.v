`timescale 1ps/1ps
module fsub_tb;
reg a,b,c;
wire d,bo;

fsub_s dut (.a(a),.b(b),.c(c),.d(d),.bo(bo));
initial 
begin
a=0;b=0;c=0;

#10; a=0;b=0;c=1;
#10; a=0;b=1;c=0;
#10; a=0;b=1;c=1;
#10; a=1;b=0;c=0;
#10; a=1;b=0;c=1;
#10; a=1;b=1;c=0;
#10; a=1;b=1;c=1;
#10 $stop;
end

initial
begin
    $monitor("$time=%0t a=%b b=%b c=%b|| d=%b b0=%b", $time,a,b,c,d,bo);
end

initial begin
    $dumpfile("fsub_s.vcd");
    $dumpvars(0,fsub_tb);
end
endmodule 