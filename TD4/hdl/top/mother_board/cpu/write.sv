`include "libcpu.svh"
import libcpu::*;
 
module write(
  ctrl_bus_if.master ctrl,
  input  REGS next,
  output REGS cur
  );
  
  always_ff @(posedge ctrl.clk) begin
    if (ctrl.rst) begin
      cur <= 0;
    end else begin
      cur <= next;
    end
  end

endmodule