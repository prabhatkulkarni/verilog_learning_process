`timescale 1ns/1ps
module delayed_and_testbench;
    reg A ,B;
    wire Y;
delayed_and d1(
    .A(A),
    .B(B),
    .Y(Y)
    );
initial begin
    $monitor("Time=%0t ,A=%b , B=%b , Y=%b",$time,A,B,Y);
    end
initial begin
    A = 1'b0;
    B = 1'b0;
    #5;

    A = 1'b1;
    B = 1'b0;
    #5;

    A = 1'b1;
    B = 1'b1;
    #5;
end
endmodule
