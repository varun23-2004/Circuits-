module decode(a1,d0,d1,d2,d3);
input [1:0]a1;
output reg d1,d2,d3,d0;

always @(*)
begin
    case ({a1})
    2'b00: {d3,d2,d1,d0}=4'b0001;
    2'b01: {d3,d2,d1,d0}=4'b0010;
    2'b10: {d3,d2,d1,d0}=4'b0100;
    2'b11: {d3,d2,d1,d0}=4'b1000;
    default: {d3,d2,d1,d0}=4'bxxxx;
    endcase
end
endmodule 