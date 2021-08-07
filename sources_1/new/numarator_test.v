module numarator_test();
    reg clk;
    reg reset;
    reg pause;
    wire [5:0]out;
    wire cout;
    
    numarator nr(clk, reset, pause, out, cout);
    
   always #10 clk = ~clk;  
   always #100 pause = ~pause;
  
  initial begin
    pause = 0;
    clk = 0;  
    reset = 1;
    
    repeat(1) @ (posedge clk);  
    reset <= 0;
  end 
               
endmodule
