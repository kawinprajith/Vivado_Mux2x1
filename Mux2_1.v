//Design Source code Verilog
`timescale 1ns / 1ps

module Mux2_1(
    input a,
    input b,
    input sel,
    output dout
    );
    assign dout = sel ? b : a;
endmodule
