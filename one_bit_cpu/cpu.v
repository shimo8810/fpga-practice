module cpu(
    input clk,          // �N���b�N
    input rst,          // ���Z�b�g
    input data,         // ROM����̃f�[�^
    output reg addr,    // ROM�̃A�h���X
    output reg led      // �o�͊m�F�pLED
);

wire led_nxt;
wire addr_nxt;

always @(posedge clk) begin
    if(rst) begin
        // ���Z�b�g��
        led <= 1'b0;
        addr <= 1'b0;
    end else begin
        // ���펞
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

// ���߂̃f�R�[�h�Ɖ��Z
assign led_nxt = decode(data, led);
// �v���O�����J�E���^�������߂�
assign addr_nxt = addr + 1'b1;

endmodule