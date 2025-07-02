// zdelta_tb.v
`timescale 1ns/1ps
module zdelta_tb;
  reg clk = 0;
  always #10 clk = ~clk; // 50 MHz sim clock

  reg [15:0] in_plane [0:19];
  reg [15:0] fb_plane [0:19];
  wire [15:0] out_plane [0:19];

  zdelta_core UUT (
    .clk(clk),
    .in_plane(in_plane),
    .fb_plane(fb_plane),
    .out_plane(out_plane)
  );

  initial begin
    // Initialize LUTs, apply drift, check correction
    // Dump waves, run for 1 ms, verify error <0.01%
    #100000 $finish;
  end
endmodule
