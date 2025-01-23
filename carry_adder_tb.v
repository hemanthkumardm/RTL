module testbench;
    reg [3:0] A, B;
    wire [3:0] sum;
    wire carry_out;

    ripple_carry_adder uut (.A(A), .B(B), .sum(sum), .carry_out(carry_out));

    initial begin
        A = 4'b0000; B = 4'b0000;
        #10 A = 4'b1010; B = 4'b0101;
        #10 A = 4'b1111; B = 4'b0001;
        #10 $finish;
    end
endmodule
