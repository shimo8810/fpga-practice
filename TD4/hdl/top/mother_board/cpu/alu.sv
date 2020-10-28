`include "libcpu.svh"
`include "liboperation.svh"

import libcpu::*;
import liboperation::*;

module alu(
  ctrl_bus_if.master ctrl,
  input  OPECODE opecode,
  input  logic [3:0] imm,
  input  logic [3:0] in,
  input  REGS cur,
  output REGS next
  );
  
  always_ff @(posedge ctrl.clk) begin
    if (ctrl.rst) begin
      next <= 0;
    end else begin
      unique case (opecode)
        MOV_A_B:    next <= mov_a_b(cur);
        MOV_B_A:    next <= mov_b_a(cur);
        MOV_A_IMM:  next <= mov_a_imm(cur, imm);
        MOV_B_IMM:  next <= mov_b_imm(cur, imm);
        IN_A:       next <= in_a(cur, in);
        IN_B:       next <= in_b(cur, in);
        OUT_B:      next <= out_b(cur);
        OUT_IMM:    next <= out_imm(cur, imm);
        ADD_A_IMM:  next <= add_a_imm(cur, imm);
        ADD_B_IMM:  next <= add_b_imm(cur, imm);
        JMP_IMM:    next <= jmp_imm(cur, imm);
        JNC_IMM:    next <= jnc_imm(cur, imm);
        NOP:        next <= nop(cur);
        INVALID:    next <= cur;
      endcase
    end
  end
endmodule