module b2bcd_tb;
reg [3:0] bin;
wire [3:0] bcd;

b2bcd uut (bin,bcd);
initial 
begin
    $monitor($time ," bin=%b | bcd=%b", bin,bcd);
    bin=4'b0000; #10;
    bin=4'b1011; #10;
    bin=4'b0111; #10;
    bin=4'b1001; #10;
    bin=4'b0110; #10;
    #50 $finish;
end
initial 
begin
    $dumpfile("b2bcd.vcd");
    $dumpvars(0,b2bcd_tb);
end
endmodule