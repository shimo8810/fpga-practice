module mother_board(
    input clk,
    input rst,
    output led
);

wire addr;
wire data;

cpu cpu(
    .clk(clk),
    .rst(rst),
    .data(data),
    .addr(addr),
    .led(led)
);

rom rom(
    .addr(addr),
    .data(data)
);

endmodule