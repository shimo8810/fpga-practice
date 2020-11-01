// VGAo—Í—pIF
interface vga_if();
  logic hsync, vsync;
  logic [3:0] r, g, b;

  modport master(
    output hsync,
    output vsync,
    output r,
    output g,
    output b
  );
endinterface