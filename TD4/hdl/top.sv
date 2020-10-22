module top(
  input  logic       pin_clk,
  input  logic       pin_rst,
  input  logic [3:0] pin_switch,
  output logic [3:0] pin_led
  );
  
  logic clk;
  
  prescaler #(.RATIO(100_000_000)) prescaler(
    .clk_in(pin_clk),
    .clk_out(clk)
  );
  
  // コントロールバス設定
  ctrl_bus_if ctrl();
  assign ctrl.clk = clk;
  assign ctrl.rst = pin_rst;
  
  // IOバス設定
  io_bus_if io();
  assign io.switch = pin_switch;
  assign io.led = pin_led;
  
  mother_board mother_board(
    .ctrl,
    .io
  );
    
endmodule