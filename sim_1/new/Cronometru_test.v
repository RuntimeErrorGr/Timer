`timescale 1ns / 1ps


module Cronometru_test();
    reg clk;
    reg reset;
    reg pause;
    wire[3:0] BCD0, BCD1, BCD2, BCD3;
    wire carry;
    
  Cronometru cronometru(clk, pause, reset, BCD0, BCD1, BCD2, BCD3, carry);
  
  always #10 clk = ~clk;  
  always #100 pause = ~pause;
   
  initial begin
    pause = 0;
    clk = 0;  
    reset = 1;
    
    repeat(2) @ (posedge clk);  
    reset <= 0;
  end 
endmodule
