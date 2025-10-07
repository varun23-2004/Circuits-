module b2gray_tb;
reg [3:0] bin;
wire [3:0] gray;

b2gray uut (bin,gray);
initial 
begin 
    $monitor ($time, " bin=%b | gray=%b", bin,gray);
    bin=4'b0000; #10;
    bin=4'b0101; #10;
    bin=4'b1010; #10;
    bin=4'b1111; #10;
    bin=4'b1001; #10;
    #100 $finish;
end
initial 
begin
    $dumpfile("b2gray.vcd");
    $dumpvars(0,b2gray_tb);
end
endmodule