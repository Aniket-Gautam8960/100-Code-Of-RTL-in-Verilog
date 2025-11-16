`timescale 1ns / 1ps

module test_bench;
    // Input registers
    reg sel, i;
    // Output wire (2 bits)
    wire [1:0] y;

    // Instantiate the Device Under Test (DUT)
    demux_1_2 dut(
        .sel(sel), 
        .i(i), 
        .y(y)
    );

    // Stimulus Generation
    initial begin
        // Initial setup for T=0
        sel = 0; i = 0;
        
        $display("---------------------------------------");
        $display("Time | SEL | I | Y[1] | Y[0] (Expected)");
        $display("---------------------------------------");

        // T=0: sel=0, i=0 (Output should be Y=00)
        #10;
        
        // T=10: sel=0, i=1 (Input 'i' goes to y[0]. Output should be Y=01)
        sel = 0; i = 1;
        #10;
        
        // T=20: sel=1, i=0 (Output should be Y=00)
        sel = 1; i = 0;
        #10;
        
        // T=30: sel=1, i=1 (Input 'i' goes to y[1]. Output should be Y=10)
        sel = 1; i = 1;
        #10;
    end
    
    // Monitoring and Simulation Control
    initial begin 
        // Monitor inputs and outputs, showing time for traceability
        $monitor("%4d | %3b | %1b | %4b | %4b", $time, sel, i, y[1], y[0]);
        
        // Finish simulation at T=40ns
        #40 $finish;
    end
endmodule