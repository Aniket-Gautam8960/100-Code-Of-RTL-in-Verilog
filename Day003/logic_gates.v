`timescale 1ns / 1ps

module logic_gates_dataflow(
    input a, b,
    output and_g,
    output or_g,
    output not_g_a, 
    output nand_g,
    output nor_g,
    output xor_g,
    output xnor_g
    );
    
    // Dataflow Modeling (using 'assign' keyword)
    assign and_g   = a & b;      
    assign or_g    = a | b;         
    assign not_g_a = ~a;        
    assign nand_g  = ~(a & b);   
    assign nor_g   = ~(a | b);  
    assign xor_g   = a ^ b;      
    assign xnor_g  = ~(a ^ b);   
    
endmodule





