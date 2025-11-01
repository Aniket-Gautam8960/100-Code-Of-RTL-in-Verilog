`timescale 1ns / 1ps

module tb_logic_gates_dataflow;

reg a, b;

wire and_g, or_g, not_g_a, nand_g, nor_g, xor_g, xnor_g;


logic_gates_dataflow UUT (
    .a(a), 
    .b(b),
    .and_g(and_g),
    .or_g(or_g),
    .not_g_a(not_g_a),
    .nand_g(nand_g),
    .nor_g(nor_g),
    .xor_g(xor_g),
    .xnor_g(xnor_g)
);


initial begin
    // Set up monitoring and header
    
    $display("| Time | a | b | AND | OR | NOT(a) | NAND | NOR | XOR | XNOR |");
    $monitor("| %t | %b | %b | %b | %b | %b | %b | %b | %b | %b |", $time, a, b, and_g, or_g, not_g_a, nand_g, nor_g, xor_g, xnor_g);

        a = 0; b = 0;
    #10; // Wait 10ns

       a = 0; b = 1;
    #10; // Wait 10ns

       a = 1; b = 0;
    #10; // Wait 10ns

        a = 1; b = 1;
    #10; // Wait 10ns

        $finish;
end

endmodule