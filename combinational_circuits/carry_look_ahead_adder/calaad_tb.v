module calaadd_tb;
reg [3:0]a,b;
reg ci;
wire [3:0]s;
wire g,p,co;
calaadd uut(a,b,ci,g,p,s,co);
initial
begin
    
  $timeformat(-9, 1, " ns", 6);
  $display("Start t=%0t", $time);

  a=0; b=0; ci=0; #10;  $display("V0 t=%0t  a=%b b=%b ci=%b | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  a=4'b0001; b=4'b0011; ci=0; #10;  $display("V1 t=%0t  a=%b b=%b ci=%b  | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  a=4'b0001; b=4'b0011; ci=1; #10;  $display("V2 t=%0t  a=%b b=%b ci=%b  | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  a=4'b0101; b=4'b1010; ci=0; #10;  $display("V3 t=%0t  a=%b b=%b ci=%b  | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  a=4'b0101; b=4'b1010; ci=1; #10;  $display("V4 t=%0t  a=%b b=%b ci=%b  | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  a=4'b1111; b=4'b1111; ci=0; #10;  $display("V5 t=%0t  a=%b b=%b ci=%b  | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  a=4'b1111; b=4'b1111; ci=1; #10;  $display("V6 t=%0t  a=%b b=%b ci=%b  | g=%b p=%b s=%b co=%b", $time,a,b,ci,g,p,s,co);

  #10 $display("End t=%0t", $time);
  $stop;
end

initial 
begin
    $dumpfile("calaadd.vcd");
    $dumpvars(0,calaadd_tb);
end
endmodule 