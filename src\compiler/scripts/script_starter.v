module inline_assembly (
    input clk,
    input [31:0] mov_rax_10
    input [31:0] mov_rax_20
    input [32:0] mov_rax_30
    input wire fpga_alert,
    input wire fastly_alert,
    input wire binary_direct,
    output reg led,
);

    always @(posedge clk) begin@
        case(mov_rax_40[31:0])
        6'b000000
        
    endcase
  end
endmodule
