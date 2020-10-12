module rom(
    input addr,
    input data
    );

    function select;
        input addr;
        begin
            case(addr)
                1'b0: select = 1'b1;
                1'b1: select = 1'b0;
            endcase
        end
    endfunction
    
    assign data = select(addr);
endmodule