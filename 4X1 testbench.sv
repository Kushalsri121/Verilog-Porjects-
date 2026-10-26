// Code your testbench here
// or browse Examples
module Mux_test;
  reg i0,i1,i2,i3;
  reg  s0,s1;
  wire out;
  wire [1:0] sel;
  Mux_4x1_gatelevel inst_mux
  (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));
  assign sel={s1,s0};
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor($time,"select = %0b, output = %d",sel,out);
    i0 <= 1'd0;
    i1 <= 1'd1;
    i2 <= 1'd0;
    i3 <= 1'd1;
    {s1,s0} <= 2'b00;

    #10 {s1,s0} <= 2'b10;
    #10 {s1,s0} <= 2'b11;
    #10 $finish;
  end
endmodule
