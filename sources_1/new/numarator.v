module numarator(input clk, input reset, input pause,
                 output reg[5:0] out, output reg cout);
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            out = 0;
            cout = 0;
        end else begin
            if (out == 6'b111011) begin
               out = 0;
               cout = 1;
            end
            else
                if (!pause) begin
                    out = out + 1;
                    cout = 0;
                 end
            end
    end
    always @ (posedge pause) begin
            out = out;
    end
endmodule
     
               

