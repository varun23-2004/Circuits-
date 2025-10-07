`timescale 1ps/1ps
module fadd_tb;
reg a,b,ci;
wire s,c;

fadd_s dut (.a(a),.b(b),.ci(ci),.s(s),.c(c));
initial
begin 
a=0;b=0;ci=0;

#10 a=0; b=0; ci=1;
#10 a=0; b=1; ci=0;
#10 a=0; b=1; ci=1;
#10 a=1; b=0; ci=0;
#10 a=1; b=0; ci=1;
#10 a=1; b=1; ci=0;
#10 a=1; b=1; ci=1;

#10 $stop;
end
initial 
begin
	$monitor("time=%0t a=%b b=%b ci=%b s=%b c=%b", $time,a,b,ci,s,c);
end

initial begin 
	$dumpfile("fadd_s.vcd");
	$dumpvars(0,fadd_tb);
end
endmodule 