`timescale 1ns / 1ps

module Structural_modeling_tb();
reg a,b;
wire AND,OR,NAND,NOT,XOR,XNOR;

  Structural_modeling dut(a,b,AND, OR, NAND, NOT, XOR, XNOR);


  
  initial begin
    
 #10 a=0; b=0;
  #10 a=0; b=1;  
#10 a=1;b=0; 
  #10 a=1;b=1;
   
  end 
endmodule
