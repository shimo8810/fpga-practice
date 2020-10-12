module cpu(
    input clk,          // クロック
    input rst,          // リセット
    input data,         // ROMからのデータ
    output reg addr,    // ROMのアドレス
    output reg led      // 出力確認用LED
);

wire led_nxt;
wire addr_nxt;

always @(posedge clk) begin
    if(rst) begin
        // リセット時
        led <= 1'b0;
        addr <= 1'b0;
    end else begin
        // 平常時
        led <= led_nxt;
        addr <= addr_nxt;
    end
end

function decode;
    input data;
    input led;
    begin
        case(data)
            1'b0: decode = led;
            1'b1: decode = ~led;
        endcase
    end
endfunction

// 命令のデコードと演算
assign led_nxt = decode(data, led);
// プログラムカウンタをすすめる
assign addr_nxt = addr + 1'b1;

endmodule