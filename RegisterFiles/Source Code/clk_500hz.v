`timescale 1ns / 1ps
/******************************************************************************
 *
 * Author:   Edward Mares
 * Partner:  Victor Espinoza
 * Email:    eddy.mares@gmail.com
 * Filename: clk_500Hz.v
 * Date:     September 16, 2013
 * Version:  1.0
 *
 * Notes:    This clock module is used to "clock" the debounce circuit with
 *           a 500Hz clock. This module divides our clock by the number
 *           specified in our if condition. In order to obtain this value, 
 *           we had to divide our Incoming frequency by our Outgoing frequency
 *           Once we obtained this number, we had to divide by 2 in order
 *           to get the appropriate counter number.
 *
 ******************************************************************************/

module clk_500Hz(clk, reset, clk_out);
   
   //Input
   input clk, reset;
   
   //Output and Reg declarations
   output reg clk_out;
   reg [15:0] count;
   
   always@(posedge clk, posedge reset)
      begin     
         if(reset) begin
            count <= 16'b0;
            clk_out <= 1'b0;
         end else 
         if(count>=50000) begin
            count <=16'b0;
            clk_out <= ~clk_out;
         end else begin
            count <= count + 1;
         end
      end
      
endmodule
