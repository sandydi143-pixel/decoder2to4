module tb_decoder3to8;
    reg a,b,c,en;
    wire [7:0] y;

    decoder3to8 dut(a,b,c,en,y);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,tb_decoder3to8);
        en=1;

        {a,b,c}=3'b000; #10;
        {a,b,c}=3'b001; #10;
        {a,b,c}=3'b010; #10;
        {a,b,c}=3'b011; #10;
        {a,b,c}=3'b100; #10;
        {a,b,c}=3'b101; #10;
        {a,b,c}=3'b110; #10;
        {a,b,c}=3'b111; #10;

        $finish;
    end
endmodule