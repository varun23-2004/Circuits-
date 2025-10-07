module decode_tb ;
reg [1:0]a1;
wire d3,d2,d1,d0;

decode uut (.a1(a1),.d3(d3),.d2(d2),.d1(d1),.d0(d0));
initial 
begin
    $monitor("time=%t, a1=%b || d3=%b, d2=%b, d1=%b, d0=%b",$time,a1,d3,d2,d1,d0);
    #10 a1=2'b00;
    #10 a1=2'b01;
    #10 a1=2'b10;
    #10 a1=2'b11;
    
    #10 $finish;
end
initial 
begin   
    $dumpfile("decode.vcd");
    $dumpvars(0,decode_tb);
end
endmodule 