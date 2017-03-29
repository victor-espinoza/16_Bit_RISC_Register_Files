`timescale 1ns / 1ps
/*************************************************************************************
 *
 * Author:   Edward Mares
 * Partner:  Victor Espinoza 
 * Email:    eddy.mares@gmail.com
 * Filename: debounce.v
 * Date:     September 16, 2013
 * Version:  1.0
 *
 * Notes:          This debounce module is used to provide the clock input to the 
 *                 sequence detector. When we press any switch manually and 
 *                 release it, it bounces due to inherent elasticity. This
 *                 causes multiple make and break of electrical contact. If the 
 *                 response time is very large then it won't create any problem, 
 *                 but if it is small then we get multiple responses for a 
 *                 single keypress. This debounce module makes it so that when
 *                 we push the button, the contact signal is forced to go down 
 *                 the sequential line and shift one place at a time 
 *                 (q9 <= q8; q8 <= q7; q7 <= q6; etc...) in order to prevent 
 *                 the signal from the pushed button from bouncing around.
 *                 Then, after creating the debounce, we assign the output(D_out)
 *                 as a one-shot output pulse.
 *
 ************************************************************************************/
module debounce(clk, reset, Din, Dout);

   //inputs from clock, global reset, and the "step" Dinput
   input       clk, reset, Din;
   
   //outputs a debounced pulse
   output wire Dout;
   
   reg q9, q8, q7, q6, q5, q4, q3, q2, q1, q0;
   
   //shifts left one bit every clock tick or resets back to zero
   always @(posedge clk or posedge reset)
      if (reset == 1'b1)
         {q9,q8,q7,q6,q5,q4,q3,q2,q1,q0} <= 10'b0;
      else begin
         q9 <= q8; q8 <= q7; q7 <= q6; q6 <= q5; q5 <= q4;
         q4 <= q3; q3 <= q2; q2 <= q1; q1 <= q0; q0 <= Din;
      end
      
   // pulse should occur when reg = 01 1111 1111 
   assign Dout = !q9 & q8 & q7 & q6 & q5 & 
                  q4 & q3 & q2 & q1 & q0;

endmodule
