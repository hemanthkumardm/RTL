module ripple_carry_adder(input [3:0] A, input [3:0] B, output [3:0] sum, output carry_out);
    wire [3:0] c;
    full_adder fa0 (.a(A[0]), .b(B[0]), .cin(0), .sum(sum[0]), .cout(c[0]));
    full_adder fa1 (.a(A[1]), .b(B[1]), .cin(c[0]), .sum(sum[1]), .cout(c[1]));
    full_adder fa2 (.a(A[2]), .b(B[2]), .cin(c[1]), .sum(sum[2]), .cout(c[2]));
    full_adder fa3 (.a(A[3]), .b(B[3]), .cin(c[2]), .sum(sum[3]), .cout(c[3]));
    assign carry_out = c[3];
endmodule
