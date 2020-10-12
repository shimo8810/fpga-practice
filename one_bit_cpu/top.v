module top(
    input pin_clk,
    input pin_rst,
    output pin_led
);

wire clk;
prescaler #(.RATIO(100_000_000)) prescaler(
    .clk_quick(pin_clk),
    .clk_slow(clk)
);

mother_board mother_board(
    .clk(clk),
    .rst(pin_rst),
    .led(pin_led)
);

endmodule