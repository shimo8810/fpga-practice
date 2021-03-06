// VRAM用 メモリバス IF
interface vram_bus_if();
  logic [15:0] addr;
  logic [7:0] data;

  modport master(input data, output addr);
  modport slave(input addr, output data);
endinterface