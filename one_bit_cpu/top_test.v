`timescale 1ns / 1ps
module top_test();

reg pin_rst, pin_clk;
wire pin_led;

top top(
    .pin_clk(pin_clk),
    .pin_rst(pin_rst),
    .pin_led(pin_led)
);


always #5 pin_clk = ~pin_clk;
initial pin_clk = 1'b0;

defparam top.prescaler.RATIO = 10; 
initial top.prescaler.cnt = 32'd0;
initial top.prescaler.clk_slow = 1'b0;

initial begin
    pin_rst = 1'b1;
    #100
    pin_rst = 1'b0;
end

initial begin
    #1000;
    $finish;
end

endmodule
