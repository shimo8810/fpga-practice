module prescaler #(parameter RATIO=2)(
    input clk_quick,    // �x�[�X�N���b�N
    output reg clk_slow // �����N���b�N
);

reg [31:0] cnt;
wire [31:0] cnt_nxt;
wire clk_slow_nxt;
wire inv;

// ���]����
assign inv = (cnt == (RATIO / 2 -1));
// �J�E���g�A�b�v
assign cnt_nxt = inv ? 32'd0 : cnt + 32'd1;
// ���]
assign clk_slow_nxt = inv ? ~clk_slow : clk_slow;

always @(posedge clk_quick) begin
    // �X�V
    cnt <= cnt_nxt;
    clk_slow <= clk_slow_nxt;
end

endmodule
