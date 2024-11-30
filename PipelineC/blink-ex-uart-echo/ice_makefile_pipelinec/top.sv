module top(
  input clk_12p0,
  // RGB LED
  output ICE_39,
  output ICE_40,
  output ICE_41,
  // UART
  output ICE_25,
  input ICE_27
);

  pipelinec_top pipelinec_inst(
    .clk_12p0(clk_12p0),
    // RGB LED
    .ice_39_return_output(ICE_39),
    .ice_40_return_output(ICE_40),
    .ice_41_return_output(ICE_41),
    // UART
    .ice_25_return_output(ICE_25),
    .ice_27_val_input(ICE_27)
  );

endmodule
