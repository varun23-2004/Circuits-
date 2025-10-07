module mux_tb;
reg a,b,c,d;
reg [1:0] s;
wire y;

mux dut (.a(a),.b(b),.c(c),.d(d),.s(s),.y(y));

initial
begin 
	{a,b,c,d}=4'b1010;
	s=2'b00; #5;
	s=2'b01; #5;
	s=2'b10; #5;
	s=2'b11; #5;

	{a,b,c,d}=4'b1111;
	s=2'b00; #5;
	s=2'b01; #5;
	s=2'b10; #5;
	s=2'b11; #5;

	{a,b,c,d}=4'b0000;
	s=2'b00; #5;
	s=2'b01; #5;
	s=2'b10; #5;
	s=2'b11; #5;

		{a,b,c,d}=4'b1001;
	s=2'b00; #5;
	s=2'b01; #5;
	s=2'b10; #5;
	s=2'b11; #5;
	$monitor("a=%b b=%b c=%b d=%b s=%b||y=%b",a,b,c,d,s,y);
	$finish;
end
initial
begin
	$dumpfile("mux.vcd");
	$dumpvars(0,mux_tb);
end
endmodule