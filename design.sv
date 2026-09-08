// Code your design here
module Mux_4x1_gatelevel(i0,i1,i2,i3,s0,s1,out);
  input i0,i1,i2,i3;
  input s0,s1;
  output out;

  wire s0_bar,s1_bar,T1,T2,T3,T4;

  not n1 (s0_bar,s0);
  not n2 (s1_bar,s1);

  and a1(T1,i0,s0_bar,s1_bar);
  and a2(T2,i1,s1_bar,s0);
  and a3(T3,i2,s1,s0_bar);
  and a4(T4,i3,s1,s0);

  or o(out,T1,T2,T3,T4);

endmodule
