module rom(
  mem_bus_if.slave mem
  );
  
  logic [7:0] rom_arr [16];
  initial $readmemh("rom1.mem", rom_arr);
  assign mem.data = rom_arr[mem.addr];

endmodule