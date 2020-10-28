`timescale 1ns/1ps
module test_top();
  logic       pin_clk;
  logic       pin_rst;
  logic [3:0] pin_switch;
  logic [3:0] pin_led;
  top top(.*);

  always #5 pin_clk = ~pin_clk;
  initial   pin_clk = 1'b0;

  defparam top.prescaler.RATIO   = 2;
  initial  top.prescaler.cnt     = 32'd0;
  initial  top.prescaler.clk_out = 1'b0;

  initial begin
    pin_rst = 1'b1;
    #23;
    pin_rst = 1'b0;
  end

  initial pin_switch = 4'd6;

  initial begin
    #8000;
    $finish();
  end
endmodule