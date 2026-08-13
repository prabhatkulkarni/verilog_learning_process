module ripple_carry_adder_4bit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] sum,
    output Cout
    );
wire [2:0]carry;
full_adder FA0(
    .int1(A[0]),
    .int2(B[0]),
    .carry_in(Cin),
    .sum(sum[0]),
    .carry_out(carry[0])
    );
full_adder FA1(
    .int1(A[1]),
    .int2(B[1]),
    .carry_in(carry[0]),
    .sum(sum[1]),
    .carry_out(carry[1])
    );
full_adder FA2(
    .int1(A[2]),
    .int2(B[2]),
    .carry_in(carry[1]),
    .sum(sum[2]),
    .carry_out(carry[2])
    );
full_adder FA3(
    .int1(A[3]),
    .int2(B[3]),
    .carry_in(carry[2]),
    .sum(sum[3]),
    .carry_out(Cout)
);
endmodule
