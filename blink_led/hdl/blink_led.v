module blink_led(
    input clk,
    input rst,
    output led
    );
    reg led;
    
    reg [22:0] cnt;
    
    always @(posedge clk) begin
        if(rst)
            cnt <= 23'h0;
        else
            cnt <= cnt + 1'h1;
    end

    always @(posedge clk) begin
        if(cnt ==23'h7fffff)
            led <= ~led;
        else 
            led <= led;
    end
    
endmodule