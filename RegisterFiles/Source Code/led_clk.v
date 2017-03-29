`timescale 1ns / 1ps
/***********************************************************************
 *
 * Author:   Edward Mares
 * Partner:  Victor Espinoza
 * Email:    eddy.mares@gmail.com
 * Filename: led_clk.v
 * Date:     October 11, 2013
 * Version:  1.0
 *
 * Notes:    Divide 50MHz on-board clock to 250Hz. This is done so that
 *           it appears to the human observer that all four anode signals
 *           are on even when in reality they are not. This is done by
 *           driving the cathode patterns at least once every 16ms,
 *           which comes out to 4ms per annode/cathode pattern.          
 *
 **********************************************************************/
module led_clk(clk, reset, clk_out);
   //inputs
   input      clk, reset;
   
   //outputs
   output reg clk_out;
   
   //counter variable
   reg [15:0] count;
   
   initial begin
   count = 0;
   end
  
   always @(posedge clk, posedge reset)
      //if reset then reset count and clock
      if(reset) begin
         count = 0;
         clk_out = 0;
      end else begin
      //increment count
         count = (count + 1);
         //set output clock to opposite if count is greater than or equal 
			//to 25000
         if(count >= 25000) begin
            count = 0;
            clk_out = ~clk_out;
         end 
      end

endmodule
