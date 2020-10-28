`include "libcpu.svh"
import libcpu::*;
 
module write(
  ctrl_bus_if.master ctrl,
  input  REGS next,
  output REGS cur
  );
  
  logic [1:0] cnt;
  
  always_ff @(posedge ctrl.clk) begin
    if (ctrl.rst) begin
      cur <= 0;
      cnt <= 0;
    end else begin
      if (cnt == 2'b01) begin
        cur <= next;
      end
      cnt = cnt + 2'b01;
    end
  end

endmodule