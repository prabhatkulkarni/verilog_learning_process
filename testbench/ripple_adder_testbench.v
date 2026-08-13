`timescale 1ns/1ps
module ripple_adder_testbench;

reg[3:0] A;
reg[3:0] B;
reg Cin;

wire[3:0] sum;
wire Cout;
ripple_carry_adder_4bit r1 (
    .A(A),
    .B(B),
    .Cin(Cin),
    .sum(sum),
    .Cout(Cout)
    );
initial begin
    $monitor("Time=%0t A=%b B=%b Cin=%b | Sum=%b Cout=%b",
             $time, A, B, Cin, sum, Cout);
end
initial begin
    //Test 1
    A = 4'b0000;
    B = 4'b0000;
    Cin = 1'b0;
    #10;
    //Test 2
    A = 4'b0001;
    B=4'b0010;
    Cin =1'b0;
    #10;
    //Test 3
    A = 4'b0101;
    B=4'b0011;
    Cin = 1'b0;
    #10;
    //Test 4
    A = 4'b1111;
    B = 4'b0001;
    Cin = 1'b0;
    #10;
    //Test 5
    A = 4'b1111;
    B = 4'b1111;
    Cin = 1'b0;
    #10;
    //Test 6
    A = 4'b1010;
    B= 4'b0101;
    Cin =1'b1;
    #10;
    end
endmodule

