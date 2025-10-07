module bcdadd_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
bcdadd uut (a,b,cin,s,cout);
initial 
begin
     $monitor($time ,"a=%b b=%b cin=%b | s=%b cout=%b",a,b,cin,s,cout);
     a=4'b0000; b=4'b0000; cin=1'b0; #10;
     a=4'b0011; b=4'b0101; cin=1'b0; #10;
     a=4'b0011; b=4'b0101; cin=1'b1; #10;
     a=4'b1010; b=4'b0001; cin=1'b0; #10;
     a=4'b1010; b=4'b0011; cin=1'b1; #10;
     #50 $finish;     
end
initial 
begin
    $dumpfile("bcdadd.vcd");
    $dumpvars(0,bcdadd_tb);
end
endmodule