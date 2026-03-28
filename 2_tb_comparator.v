`timescale 1ns/1ps

module comparator3bit_tb;

reg [2:0] A;
reg [2:0] B;
wire A_gt_B;
wire A_eq_B;
wire A_lt_B;

// Instantiate the comparator
comparator3bit uut(
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_eq_B(A_eq_B),
    .A_lt_B(A_lt_B)
);

initial begin
    // Dump file for waveform
    $dumpfile("comparator3bit.vcd");
    $dumpvars(0, comparator3bit_tb);

    // Test all combinations
    for (integer i = 0; i < 8; i = i + 1) begin
        for (integer j = 0; j < 8; j = j + 1) begin
            A = i;
            B = j;
            #10;  // wait 10 ns
        end
    end

    
end

endmodule
