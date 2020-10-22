module prescaler #(parameter RATIO=2)(
    input  logic clk_in,    // ベースクロック
    output logic clk_out    // 分周クロック
);

logic [31:0] cnt, cnt_nxt;
logic inv;
logic clk_out_nxt;

assign inv = (cnt == (RATIO / 2 - 1));
assign cnt_nxt = inv ? 32'd0 : cnt + 32'd1;
assign clk_out_nxt = inv ? ~clk_out : clk_out;

always_ff @(posedge clk_in) begin
    cnt <= cnt_nxt;
    clk_out <= clk_out_nxt;
end


endmodule
