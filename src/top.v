module wokwi_tt03_simon_top(
  input [7:0] io_in,
  output [7:0] io_out
);

  simon simon1 (
      .clk   (io_in[0]),
      .rst   (io_in[1]),
      .ticks_per_milli (15),
      .btn   (io_in[5:2]),
      .led   (io_out[3:0]),
      .sound (io_out[4])
  );

endmodule
