module top();

  logic ena, enb;
  logic [0:0] wea, web;
  logic [14:0] addra, addrb;
  logic [11:0] dina, dinb;
  logic [11:0] douta, doutb;

  vram vram(
    .clka(clka),    // input wire clka
    .wea(wea),      // input wire [0 : 0] wea
    .addra(addra),  // input wire [14 : 0] addra
    .dina(dina),    // input wire [11 : 0] dina
    .douta(douta),  // output wire [11 : 0] douta
    .clkb(clkb),    // input wire clkb
    .web(web),      // input wire [0 : 0] web
    .addrb(addrb),  // input wire [14 : 0] addrb
    .dinb(dinb),    // input wire [11 : 0] dinb
    .doutb(doutb)   // output wire [11 : 0] doutb
  );// ƒgƒbƒv‚¾‚æ

endmodule
