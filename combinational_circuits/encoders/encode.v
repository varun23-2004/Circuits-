module encode (d0,d1,d2,d3,a1,a0);
input d0,d1,d2,d3;
output reg a1,a0;

always @(d0 or d1 or d2 or d3)
begin 
case ({d3,d2,d1,d0})
4'b0001: {a1,a0} = 2'b00;
4'b0010: {a1,a0} = 2'b01;
4'b0100: {a1,a0} = 2'b10;
4'b1000: {a1,a0} = 2'b11;
default : {a1,a0} = 2'bxx;
endcase
end endmodule 

