module calaadd(a,b,ci,g,p,s,co);
input [3:0]a,b;
input ci;
output [3:0]s;
output g,p,co;

wire [3:0]g1,p1,c;
assign g1=a&b;
assign p1=a|b;
assign g=g1[3]|(p1[3]&g1[2])|(p1[3]&p1[2]&g1[1])|(p1[3]&p1[2]&p1[1]&g1[0]);
assign p=p1[3]&p1[2]&p1[1]&p1[0];
assign c[0]=ci;
