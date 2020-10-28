`ifndef LIB_CPU_SVH
`define LIB_CPU_SVH

package libcpu;

// レジスタ
typedef struct packed {
    logic [3:0] a, b, ip, out;
    logic cf;
} REGS;

// オペコード
typedef enum logic [3:0] {
    MOV_A_B,
    MOV_B_A,
    MOV_A_IMM,
    MOV_B_IMM,
    IN_A,
    IN_B,
    OUT_B,
    OUT_IMM,
    ADD_A_IMM,
    ADD_B_IMM,
    JMP_IMM,
    JNC_IMM,
    NOP,
    INVALID
} OPECODE;

endpackage
`endif