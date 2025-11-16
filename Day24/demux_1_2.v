`timescale 1ns / 1ps

/**
 * 1-to-2 Demultiplexer (DEMUX)
 * Selects one of two output lines (y[1:0]) to receive the input signal (i).
 */
module demux_1_2(
    input sel, // Select line
    input i,   // Data input
    output [1:0] y // 2-bit output (y[1], y[0])
);

    // Logic:
    // y[0] gets the input 'i' if 'sel' is 0
    assign y[0] = (~sel) & i;
    
    // y[1] gets the input 'i' if 'sel' is 1
    assign y[1] = sel & i;

endmodule