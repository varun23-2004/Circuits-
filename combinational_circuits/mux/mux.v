module mux (
    input a, b, c, d,
    input [1:0] s,
    output y
);

wire not_s0, not_s1;
wire and0, and1, and2, and3;

// Invert select bits
not U0(not_s0, s[0]);
not U1(not_s1, s[1]);

// AND gates to select inputs based on s
and U2(and0, a, not_s1, not_s0); // select 00
and U3(and1, b, not_s1, s[0]);   // select 01
and U4(and2, c, s[1], not_s0);   // select 10
and U5(and3, d, s[1], s[0]);     // select 11

// OR outputs to get final y
or U6(y, and0, and1, and2, and3);

endmodule
