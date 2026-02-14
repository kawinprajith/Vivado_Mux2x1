//Testbench for mux2x1 verilog 

`timescale 1ns / 1ps

module tb_mux;

reg a;
reg b;
reg sel;
wire dout;

// Instantiate your design
Mux2_1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .dout(dout)
);

initial begin
    // Monitor values in console
    $monitor("time=%0t a=%b b=%b sel=%b dout=%b", $time,a,b,sel,dout);

    // Apply test cases
    a=0; b=1; sel=0;   // expect dout=0
    #10 sel=1;         // expect dout=1
    #10 a=1; b=0; sel=0; // expect dout=1
    #10 sel=1;         // expect dout=0
    #10 $finish;
end

endmodule
