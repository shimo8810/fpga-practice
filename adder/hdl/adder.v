module adder(
    input  [3:0] in_data1,
    input  [3:0] in_data2,
    output [3:0] out_data,
    output       cy
    );

    wire  [4:0] result;

    assign result = in_data1 + in_data2;
    assign cy = result[4];
    assign out_data = result[3:0];

endmodule