`timescale 1ns / 1ps
module logic_gates_tb;
    // Declare inputs as reg and outputs as wire
    reg a, b;
    wire and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g;
    // Instantiate the DUT (Device Under Test)
    logic_gates_assign uut (
        .a(a), 
        .b(b),
        .and_g(and_g), 
        .or_g(or_g), 
        .not_g(not_g),
        .nand_g(nand_g), 
        .nor_g(nor_g), 
        .xor_g(xor_g), 
        .xnor_g(xnor_g)
    );
    initial begin
        // Monitor the inputs and outputs
        $display("A B | AND OR NOT NAND NOR XOR XNOR");
        $monitor("%b %b |  %b   %b   %b    %b    %b   %b    %b", a, b, and_g, or_g, not_g, nand_g, nor_g, xor_g, xnor_g);

        // Apply all possible combinations of a and b
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish; // End simulation
    end
endmodule
