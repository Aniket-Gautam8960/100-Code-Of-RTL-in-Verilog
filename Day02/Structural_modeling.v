`timescale 1ns / 1ps

module Structural_modeling (
input a,
input b,
 output AND,
 output OR,
 output NAND,
 output NOT,
  output XOR,
  output XNOR 
  );
    assign AND = a&b;
    assign NAND =  ~(a&b);
    assign OR = a|b;
    assign XOR = a^b;
    assign XNOR = a~^b;
    assign NOT = ~a;
    
endmodule
