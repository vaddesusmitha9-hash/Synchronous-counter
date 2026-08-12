`timescale 1ns/1ps

module synchronous_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] q;

    // Connect synchronous counter
    synchronous_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform
        $dumpfile("output.vcd");
        $dumpvars(0, synchronous_counter_tb);

        // Initial values
        clk = 0;
        reset = 1;

        #10;

        // Release reset
        reset = 0;

        // Run counter
        #180;

        // Reset counter
        reset = 1;
        #10;

        reset = 0;

        #40;

        $finish;

    end

endmodule