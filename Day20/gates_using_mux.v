`timescale 1ns / 1ps

module mux_2_1(
    input [1:0] i,
    input select,
    output y_out    
    );
    assign y_out = select ? i[1] : i[0];
endmodule


module gates_mux(
    input a, b,
    output and_out,
    output or_out,
    output not_out
    );

    // AND gate using MUX → if a=1 → output=b, else output=0
    mux_2_1 mand({b, 1'b0}, a, and_out);

    // OR gate using MUX → if a=1 → output=1, else output=b
    mux_2_1 mor({1'b1, b}, a, or_out);

    // NOT gate using MUX → if a=1 → output=0, else output=1
    mux_2_1 mnot({1'b0, 1'b1}, a, not_out);

endmodule
