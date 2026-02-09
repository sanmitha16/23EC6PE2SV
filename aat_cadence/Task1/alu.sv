module alu (
  alu_if.DUT alu_if
);

  typedef enum logic [1:0] {
    ADD = 2'b00,
    SUB = 2'b01,
    MUL = 2'b10,
    XOR = 2'b11
  } opcode_t;

  always_ff @(posedge alu_if.clk) begin
    case (alu_if.opcode)
      ADD: alu_if.result <= alu_if.a + alu_if.b;
      SUB: alu_if.result <= alu_if.a - alu_if.b;
      MUL: amodule alu (
  alu_if.DUT alu_if
);

  typedef enum logic [1:0] {
    ADD = 2'b00,
    SUB = 2'b01,
    MUL = 2'b10,
    XOR = 2'b11
  } opcode_t;

  always_ff @(posedge alu_if.clk) begin
    case (alu_if.opcode)
      ADD: alu_if.result <= alu_if.a + alu_if.b;
      SUB: alu_if.result <= alu_if.a - alu_if.b;
      MUL: alu_if.result <= alu_if.a * alu_if.b;
      XOR: alu_if.result <= alu_if.a ^ alu_if.b;

      // Unreachable default (all 2-bit values covered)
      // pragma coverage off
      default: alu_if.result <= '0;
      // pragma coverage on
    endcase
  end

endmodule
lu_if.result <= alu_if.a * alu_if.b;
      XOR: alu_if.result <= alu_if.a ^ alu_if.b;

      // Unreachable default (all 2-bit values covered)
      // pragma coverage off
      default: alu_if.result <= '0;
      // pragma coverage on
    endcase
  end

endmodule