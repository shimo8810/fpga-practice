`ifndef LIB_OPERATION_SVH
`define LIB_OPERATION_SVH

`include "libcpu.svh"

package liboperation;

import libcpu::REGS;

function automatic REGS nop(REGS cur);
  nop = cur;
  nop.cf = 1'b0;
  nop.ip = cur.ip + 4'd1;
endfunction

function automatic REGS mov_a_b(REGS cur);
  mov_a_b = nop(cur);
  mov_a_b.a = cur.b;
endfunction

function automatic REGS mov_b_a(REGS cur);
  mov_b_a = nop(cur);
  mov_b_a.b = cur.a;
endfunction

function automatic REGS mov_a_imm(REGS cur, input [3:0] imm);
  mov_a_imm = nop(cur);
  mov_a_imm.a = imm;
endfunction

function automatic REGS mov_b_imm(REGS cur, input [3:0] imm);
  mov_b_imm = nop(cur);
  mov_b_imm.b = imm;
endfunction

function automatic REGS add_a_imm(REGS cur, input [3:0] imm);
  add_a_imm = nop(cur);
  {add_a_imm.cf, add_a_imm.a} = cur.a + imm;
endfunction

function automatic REGS add_b_imm(REGS cur, input [3:0] imm);
  add_b_imm = nop(cur);
  {add_b_imm.cf, add_b_imm.b} = cur.b + imm;
endfunction

function automatic REGS jmp_imm(REGS cur, input [3:0] imm);
  jmp_imm = nop(cur);
  jmp_imm.ip = imm;
endfunction

function automatic REGS jnc_imm(REGS cur,input [3:0] imm);
  jnc_imm = nop(cur);
  jnc_imm.ip = cur.cf ? cur.ip + 4'd1 : imm;
endfunction

function automatic REGS in_a(REGS cur, input [3:0] in);
  in_a = nop(cur);
  in_a.a = in;
endfunction

function automatic REGS in_b(REGS cur, input [3:0] in);
  in_b = nop(cur);
  in_b.b = in;
endfunction

function automatic REGS out_b(REGS cur);
  out_b = nop(cur);
  out_b.out = cur.b;
endfunction

function automatic REGS out_imm(REGS cur, input [3:0] imm);
  out_imm = nop(cur);
  out_imm.out = imm;
endfunction

endpackage
`endif