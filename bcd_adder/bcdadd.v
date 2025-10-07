module bcdadd(a,b,cin,s,cout);
input [3:0] a,b;
input cin ;
output [3:0] s;
output cout;

wire [4:0] rawsum;
wire correction;
wire [3:0] corrsum;

assign rawsum=a+b+cin;
assign correction=rawsum>9;
assign corrsum=rawsum+6;
assign s=correction ? corrsum[3:0] : rawsum[3:0];
assign cout=correction;
endmodule