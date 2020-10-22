module mother_board(
  ctrl_bus_if.master ctrl,
  io_bus_if.master io
  );
  
  mem_bus_if mem();
  
  cpu cpu(
    .ctrl,
    .io,
    .mem
  );
  
  rom rom(
    .mem
  );
  
endmodule