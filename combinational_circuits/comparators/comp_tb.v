module comp_tb;
reg [2:0]a,b;
wire l,e,g;

comp uu(a,b,l,e,g);

initial begin
    $monitor("a=%b, b=%b || l=%b, e=%b, g=%b",a,b,l,e,g);
    #5; a=3'b000;b=3'b010;
    #5; a=3'b011;b=3'b111;
    #5; a=3'b101;b=3'b001;
    #5; a=3'b110;b=3'b110;
    #5; $finish;
end
initial 
begin
    $dumpfile("comp.vcd");
    $dumpvars(0,comp_tb);
end
endmodule 
