module top(in_data, out_data);
  wire celloutsig_12z;
  wire celloutsig_15z;
  wire celloutsig_17z;
  wire celloutsig_4z;
  wire celloutsig_67z;
  wire celloutsig_9z;
  input [95:0] in_data;
  wire [95:0] in_data;
  output [95:0] out_data;
  wire [95:0] out_data;
  assign celloutsig_4z = ~(in_data[72] & in_data[43]);
  assign celloutsig_67z = | { in_data[64], celloutsig_12z };
  assign celloutsig_15z = in_data[43] & ~(celloutsig_4z);
  assign celloutsig_9z = celloutsig_17z & ~(in_data[43]);
  assign celloutsig_17z = celloutsig_15z & ~(in_data[43]);
  assign celloutsig_12z = celloutsig_4z != celloutsig_9z;
  assign out_data[32] = celloutsig_67z;
endmodule
