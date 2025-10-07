module b2bcd(bin, bcd);
input  [3:0] bin;     
output [3:0] bcd;    

assign bcd[3] = (bin[3] & (bin[2] | bin[1])) ;
assign bcd[2] = (bin[3] & ~bin[2] & bin[1]) | (bin[2] & bin[1]) | (bin[2] & ~bin[3]);
assign bcd[1] = (~bin[3] & bin[1]) | (bin[3] & ~bin[2]);
assign bcd[0] = bin[0] ;
endmodule
