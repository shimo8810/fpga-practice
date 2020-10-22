`timescale 1ns / 1ps

module sim_prescaler();
logic clk_in, clk_out;

prescaler #(.RATIO(100_000)) prescaler(
    .clk_in(clk_in),
    .clk_out(clk_out)
);

initial prescaler.cnt = 0;
initial prescaler.inv = 0;
initial prescaler.clk_out = 0;
initial clk_in = 0;

always #5 begin
    clk_in = ~clk_in;
end

initial begin
    #10_000_000
    $finish();
end

endmodule
