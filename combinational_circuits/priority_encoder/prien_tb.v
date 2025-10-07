module prien_tb;
reg [3:0] in;
wire [1:0] out;
wire valid;
prien uut (in,out,valid);
initial 
begin
    $monitor($time ," in=%b | out=%b valid=%b", in,out,valid);
    in=4'b0000; #10;
    in=4'b0001; #10;
    in=4'b0010; #10;
    in=4'b0011; #10;
    in=4'b0100; #10;
    in=4'b0101; #10;
    in=4'b0110; #10;
    in=4'b0111; #10;
    in=4'b1000; #10;
    in=4'b1111; #10;
    #100 $finish;
end
initial 
begin 
    $dumpfile("prien.vcd");
    $dumpvars(0,prien_tb);
end
endmodule