module register_4bit_tb;

reg clk, reset, load;
reg [3:0] d;
wire [3:0] q;

register_4bit uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .d(d),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("register_4bit.vcd");
    $dumpvars(0, register_4bit_tb);

    $monitor("Time=%0t | clk=%b reset=%b load=%b d=%b q=%b",
              $time, clk, reset, load, d, q);

    // Initial values
    clk = 0;
    reset = 1;
    load = 0;
    d = 4'b0000;

    #5 reset = 0;

    // Load values
    #10 load = 1; d = 4'b1010;
    #10 load = 0;

    #10 load = 1; d = 4'b1100;
    #10 load = 0;

    #20 reset = 1;
    #10 reset = 0;

    #30 $finish;
end

endmodule
