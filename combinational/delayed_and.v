`timescale 1ns/1ps
module delayed_and(
    input A,B,
    output Y
    );
assign #2 Y = A&B;
endmodule
