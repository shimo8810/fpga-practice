`include "libcpu.svh"
import libcpu::*;

module cpu(
  ctrl_bus_if.master ctrl,
  io_bus_if.master io,
  mem_bus_if.master mem
  );

  OPECODE opecode;
  logic [3:0] imm;
  logic [7:0] data;
  logic [3:0] delay_ip;
  REGS cur;
  REGS next;
  
  fetch fetch(
    .ctrl,
    .mem,
    .ip(delay_ip),
    .data
  );
  
  decoder decoder(
    .ctrl,
    .data,
    .opecode,
    .imm
  );
  
  alu alu(
    .ctrl,
    .opecode,
    .imm,
    .in(io.switch),
    .cur,
    .next
  );

  write write(
    .ctrl,
    .next,
    .cur
  );
  
  logic cnt;
  always_ff @(posedge ctrl.clk) begin
    if (ctrl.rst) begin
      cnt <= 0;
      delay_ip <= 0;
    end else begin
      if (cnt == 1) begin
        delay_ip <= next.ip;
      end
      cnt <= cnt + 1;
    end
  end

endmodule