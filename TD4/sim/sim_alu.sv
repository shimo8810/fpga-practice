`timescale 1ns / 1ps

`include "libcpu.svh"
`include "liboperation.svh"

import libcpu::*;
import liboperation::*;

module sim_alu(
);

OPECODE opecode;
logic [3:0] imm;
logic [3:0] in;
REGS cur;
REGS next; 

alu alu(.*);

// èâä˙âª
initial begin
  opecode = INVALID;
  imm = 0;
  in = 0;
  cur = 0;
  next = 0;
end


initial begin
  // start invalid
  #50
  cur.a = 4'b1100;
  imm = 4'b0001;
  #50
  opecode = ADD_A_IMM;
  #50
  opecode = INVALID;
  cur.a = 4'b1111;
  imm = 4'b0001;
  #50
  opecode = ADD_A_IMM;
  #50
  imm = 4'b0111;
  #50
  opecode = JNC_IMM;
  #50
  $finish();
end

endmodule