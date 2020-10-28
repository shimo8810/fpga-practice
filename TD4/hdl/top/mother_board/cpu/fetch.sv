`include "libcpu.svh"
import libcpu :: *;

module fetch(
  ctrl_bus_if.master ctrl,
  mem_bus_if.master mem,
  input  logic [3:0] ip,
  output logic [7:0] data
  );
  
  assign mem.addr = ip;
  
  always_ff @(posedge ctrl.clk) begin
    if (ctrl.rst) begin
      data <= {4'b1000, 4'b0000}; // INVALID 0
    end else begin
      data <= mem.data;
    end
  end
  
endmodule
