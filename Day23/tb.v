`timescale 1ns / 1ps

module test_bench;
    // Test bench inputs must be registers (reg)
    reg a, b, cin;
    // Test bench outputs must be wires (wire)
    wire sum, carry;

    // Instantiate the Device Under Test (DUT)
    full_adder dut(
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .carry(carry)
    );

    // Initialize inputs and generate stimulus
    initial begin
        // Set initial state
        a = 0; b = 0; cin = 0;
        
        $display("Time | A | B | CIN | SUM | CARRY");
        $display("--------------------------------");

        // Test Case 1: 000
        #10;
        // Test Case 2: 001
        a = 0; b = 0; cin = 1;
        #10;
        // Test Case 3: 010
        a = 0; b = 1; cin = 0;
        #10;
        // Test Case 4: 011
        a = 0; b = 1; cin = 1;
        #10;
        // Test Case 5: 100
        a = 1; b = 0; cin = 0;
        #10;
        // Test Case 6: 101
        a = 1; b = 0; cin = 1;
        #10;
        // Test Case 7: 110
        a = 1; b = 1; cin = 0;
        #10;
        // Test Case 8: 111
        a = 1; b = 1; cin = 1;
        #10;
        
        // End simulation after all cases are tested and settled
        $finish; 
    end
    
    // Monitor inputs and outputs and display them in the console
    initial begin
        $monitor("%4d | %b | %b | %3b | %3b | %5b", $time, a, b, cin, sum, carry);
    end
endmodule