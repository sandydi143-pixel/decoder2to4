module decoder2to4(
    input a,
    input b,
    input en,
    output [3:0] y
);
    assign y[0] = en & ~a & ~b;
    assign y[1] = en & ~a & b;
    assign y[2] = en & a & ~b;
    assign y[3] = en & a & b;
endmodule

module decoder3to8(
    input a,
    input b,
    input c,
    input en,
    output [7:0] y
);
    wire en0, en1;

    assign en0 = en & ~a;
    assign en1 = en & a;

    decoder2to4 d0(c,b,en0,y[3:0]);
    decoder2to4 d1(c,b,en1,y[7:4]);
endmodule

