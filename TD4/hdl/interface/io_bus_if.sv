interface io_bus_if ();
  logic [3:0] switch;
  logic [3:0] led;
  
  modport master(input switch, output led);
endinterface