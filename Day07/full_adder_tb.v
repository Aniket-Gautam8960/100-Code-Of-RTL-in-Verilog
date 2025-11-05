`timescale 1ns / 1ps

module full_adder_tb;

  reg a, b, cin;          // inputs (reg)
  wire sout, cout;        // outputs (wire)

  // Instantiate DUT (names must match design file)
  full_adder dut (
    .a(a),
    .b(b),
    .cin(cin),
    .sout(sout),
    .cout(cout)
  );

  initial begin
    // Apply test inputs
    a = 0; b = 0; cin = 0;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    #10 $finish;
  end

endmodule
