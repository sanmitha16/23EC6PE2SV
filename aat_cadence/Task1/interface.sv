interface alu_if (input logic clk);

  logic [7:0] a, b;
  logic [7:0] result;
  logic [1:0] opcode;

  modport DUT (
    input  a, b, opcode, clk,
    output result
  );

  modport TB (
    output a, b, opcode,
    input  result, clk
  );

endinterface