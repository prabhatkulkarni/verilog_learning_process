`timescale 1ns/1ps
module full_adder(
    input int1 ,
    input int2 ,
    input carry_in,
    output sum ,
    output carry_out
    );
wire sum1;
wire carry1;
wire  carry2;
half_adder h1(
    .a(int1),
    .b(int2) ,
    .sum(sum1) ,
    .carry(carry1)
    );
half_adder h2(
    .a(carry_in),
    .b(sum1),
    .sum(sum),
    .carry(carry2)
    );
assign  #2 carry_out = carry1 | carry2 ;
endmodule
