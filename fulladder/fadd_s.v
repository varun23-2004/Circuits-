module fadd_s (a,b,ci,s,c);
input a,b,ci;
output s,c;
    wire w1,w2,w3;

    xor(w1, a, b);
    xor(s, w1, ci);
    and(w2, a, b);
    and(w3, w1, ci);
    or(c, w2, w3);
endmodule
