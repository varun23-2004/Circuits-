module bcd2exce (bcd,exce);
input [15:0] bcd;
output [15:0] exce;

assign exce=bcd + 16'h3;
endmodule