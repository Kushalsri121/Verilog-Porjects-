module muxtest;
  reg[15:0]A ; reg[3:0]B ; wire Y ;
  mux16x1 M (.in(A),.sel(B),.out(Y));
  initial
    begin
      $dumpfile("mux16x1.vcd");
      $dumpvars(0,muxtest);
      $monitor($time,"A=%h,B=%h,Y=%b",A,B,Y);
      #5 A=16'h3f0a;B=4'h0;
      #5 B=4'h1;
      #5 B=4'h6;
      #5 B=4'hc;
      #5 $finish;
    end
endmodule
      
      
      
  
