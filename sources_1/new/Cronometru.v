`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

module Cronometru(input clk, pause, reset, output[3:0] BCD0, BCD1, BCD2, BCD3, output carry);
    
    wire[5 : 0] sec;
    wire[5 : 0] min;
    numarator counter_sec(.clk(clk), .reset(reset), .pause(pause), .out(sec), .cout(carry));
    bin2bcd convertor_sec(.valoare_bin(sec), .BCD0(BCD0), .BCD1(BCD1));
    numarator counter_min(.clk(carry), .reset(reset), .pause(pause), .out(min));
    bin2bcd convertor_min(.valoare_bin(min), .BCD0(BCD3), .BCD1(BCD2));
endmodule