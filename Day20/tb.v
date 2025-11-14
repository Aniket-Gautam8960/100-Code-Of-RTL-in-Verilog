`timescale 1ns / 1ps

module test_bench;
    reg a, b;
    wire and_out, or_out, not_out;
         
    gates_mux dut(a, b, and_out, or_out, not_out);

    initial begin
        a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end
   
    initial begin
        $monitor("time=%0t | a=%b b=%b | AND=%b OR=%b NOT=%b",
                  $time, a, b, and_out, or_out, not_out);
    end
endmodule
