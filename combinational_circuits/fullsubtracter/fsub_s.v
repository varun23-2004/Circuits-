module fsub_s(a,b,c,d,bo);
input a,b,c;
output d,bo;

    wire w1, w2, w3, w4;
    //diff
    xor(w1,a,b);
    xor(s,w1,c);
    //borrow
    or(w1,b,c);
    and(w2,b,c);
    not (w3,a);
    or(w4,w2,w3);
    and(bo,w1,w4);
endmodule 
