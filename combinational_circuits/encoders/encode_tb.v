module encode_tb;
reg d0,d1,d2,d3;
wire a1,a0;
encode uut (.d0(d0),.d1(d1),.d2(d2),.d3(d3),.a1(a1),.a0(a0));
initial 
begin
    $monitor ($time, "d3=%b d2=%b d1=%b d0=%b || a1=%b a==%b", d3,d2,d1,d0,a0,a1);
    d3=0; d2=0; d1=0; d0=0;
    #10 d3=0; d2=0; d1=0; d0=1;
    #10 d3=0; d2=0; d1=1; d0=0;
    #10 d3=0; d2=1; d1=0; d0=0;
    #10 d3=1; d2=0; d1=0; d0=0;
    #10 $finish;
end
initial
begin
    $dumpfile ("encode.vcd");
    $dumpvars (0,encode_tb);
end
endmodule 