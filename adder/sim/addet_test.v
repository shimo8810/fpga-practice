`timescale 1ms/1us
module adder_test();

reg [3:0] in_data1;
reg [3:0] in_data2;
wire [3:0] out_data;
wire cy;

adder adder(
    .in_data1(in_data1),
    .in_data2(in_data2),
    .out_data(out_data),
    .cy(cy)
);


initial begin
        in_data1 <= 4'b0011;
        in_data2 <= 4'b0101;
    #100
        in_data1 <= 4'b1100;
        in_data2 <= 4'b1010;
    $finish;
end   

endmodule
