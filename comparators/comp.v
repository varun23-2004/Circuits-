module comp(a,b,l,e,g);
input [2:0]a,b;
output reg l,e,g;

always @(*)
begin 
    if(a<b)
    begin
        l=1;e=0;g=0;
    end
    else if (a==b)
    begin 
        l=0;e=1;g=0;
    end
    else if (a>b)
    begin
        l=0;e=0;g=1;
    end
    else 
    begin
        l=0;e=0;g=0;
    end
end
endmodule

