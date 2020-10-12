module prescaler #(parameter RATIO=2)(
    input clk_quick,    // ベースクロック
    output reg clk_slow // 分周クロック
);

reg [31:0] cnt;
wire [31:0] cnt_nxt;
wire clk_slow_nxt;
wire inv;

// 反転条件
assign inv = (cnt == (RATIO / 2 -1));
// カウントアップ
assign cnt_nxt = inv ? 32'd0 : cnt + 32'd1;
// 反転
assign clk_slow_nxt = inv ? ~clk_slow : clk_slow;

always @(posedge clk_quick) begin
    // 更新
    cnt <= cnt_nxt;
    clk_slow <= clk_slow_nxt;
end

endmodule
