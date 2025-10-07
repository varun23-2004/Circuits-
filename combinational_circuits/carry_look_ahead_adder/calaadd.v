module calaadd(a,b,ci,g,p,s,co);
input [3:0]a,b;
input ci;
output [3:0]s;
output g,p,co;

wire [3:0]g1,p1;
wire [4:0]c;
assign g1=a&b;
assign p1=a^b;
assign g = g1[3] | (p1[3] & g1[2]) | (p1[3] & p1[2] & g1[1]) | (p1[3] & p1[2] & p1[1] & g1[0]);
assign p = p1[3] & p1[2] & p1[1] & p1[0];
assign c[0] = ci;                                               // C0
assign c[1] = g1[0] | (p1[0] & c[0]);                           // C1
assign c[2] = g1[1] | (p1[1] & g1[0]) | (p1[1] & p1[0] & c[0]); // C2
assign c[3] = g1[2] | (p1[2] & g1[1]) | (p1[2] & p1[1] & g1[0]) | (p1[2] & p1[1] & p1[0] & c[0]); // C3
assign c[4] = g | (p & c[0]);    
assign s  = p1 ^ c[3:0]; // s_i = p_i ^ C_i
assign co = c[4];
endmodule 