`timescale 1ns / 1ps

module tb;
  reg A, B;            // inputs (reg)
  wire Sout, Cout;     // outputs (wire)
  reg clk;             // clock for display timing
  
  // ✅ Correct port mapping (inputs first, outputs next)
  half_adder DUT (
    .a(A),
    .b(B),
    .sout(Sout),
    .cout(Cout)
  );
  
  // Generate clock
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    
    clk = 0;
    
    // Apply test cases
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
  end
  
  // Display results on every clock edge
  always @(posedge clk) begin
    $display("Time=%0t | A=%b B=%b | Sum=%b Carry=%b", $time, A, B, Sout, Cout);
  end
endmodule
