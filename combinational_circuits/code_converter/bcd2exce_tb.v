module bcd2exce_tb;
reg [15:0] bcd;
wire [15:0] exce;
 
bcd2exce uut (bcd, exce);
initial 
begin
    $monitor($time, " bcd=%b | exce=%b", bcd, exce);
    bcd=16'h0; #10;
    bcd=16'h10; #10;
    bcd=16'h25; #10;
    bcd=16'h39; #10;
    bcd=16'h47; #10;
    bcd=16'h58; #10;
    bcd=16'h69; #10;
    #10 $finish;
end
initial 
begin
    $dumpfile("bcd2exce.vcd");
    $dumpvars(0,bcd2exce_tb);
end
endmodule