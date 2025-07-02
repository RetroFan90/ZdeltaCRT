// zdelta_core.v
module zdelta_core (
  input  wire         clk,
  input  wire [15:0]  in_plane [0:19],
  input  wire [15:0]  fb_plane [0:19],
  output reg  [15:0]  out_plane[0:19]
);
  // LUT BRAMs
  reg [15:0] lut_mem [0:19][0:65535];
  integer i;
  always @(posedge clk) begin
    for (i=0; i<20; i=i+1) begin
      out_plane[i] <= lut_mem[i][in_plane[i]] + fb_plane[i];
    end
  end
endmodule
