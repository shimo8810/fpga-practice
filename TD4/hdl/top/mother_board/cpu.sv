`include "libcpu.svh"
import libcpu::*;

module cpu(
  ctrl_bus_if.master ctrl,
  io_bus_if.master io,
  mem_bus_if.master mem
  );

  OPECODE opecode;
  logic [3:0] imm;
  REGS cur;
  REGS next;
  
  decoder decoder(
    .ctrl,
    .data(mem.data),
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
  
  assign io.led = cur.out;
  assign mem.addr = cur.ip;

endmodule