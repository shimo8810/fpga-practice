`timescale 1ns / 1ps

`include "libcpu.svh"
import libcpu::*;

module sim_decoder(
);

logic [7:0] data;
OPECODE opecode;
logic [3:0] imm;

decoder decoder(.*);

initial data = 8'b0000_0000;


initial begin
  data = 8'b0000_0000;
  #50
  data = 8'b0101_0001;
  #50
  data = 8'b0011_0010;
  #50
  data = 8'b0111_0011;
  #50
  data = 8'b0001_0100;
  #50
  data = 8'b0100_0101;
  #50
  data = 8'b1111_0110;
  #50
  data = 8'b1110_0111;
  #50
  data = 8'b0010_1000;
  #50
  data = 8'b0110_1001;
  #50
  data = 8'b1001_1010;
  #50
  data = 8'b1011_1011;
  #50
  data = 8'b1000_1100;
  #50
  $finish();
end

endmodule