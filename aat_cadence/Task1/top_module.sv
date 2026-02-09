module top;

  logic clk;
  always #5 clk = ~clk;

  alu_if alu_if (clk);

  alu dut (
    .alu_if(alu_if)
  );

  tb_alu tb (
    .alu_if(alu_if)
  );

  initial clk = 0;

endmodule