`timescale 1ns / 1ps
/***********************************************************************************  
* Name: Eddy Mares
* Partner:  Victor Espinoza
* Date: 12/6/12
* File: Hex_to_7seg.v 
* Email:eddy.mares@gmail.com
* 
*  Description:    This hex_to_7segment module basicaly takes in a four bit input
*                  and depending on what that input is, it then transfers that 
*                  information by turning on the appropriate segments (a-g) on the 
*                  seven segment display in order to represent that four bit input.
*                  This was achieved by using case statements for all of the 
*                  appropriate 4-bit input options and assigning the according
*                  values for a-g for that 4-bit input. Depending on the 4-bit
*                  value, the appropriate segments are turned on in order to 
*                  display that value.
* 
**************************************************************************************/

module Hex_to_7seg(a, b, c, d, e, f, g, hex);

   //Input
   input [3:0]  hex;

   //Output
   output       a, b, c, d, e, f, g;
   reg          a, b, c, d, e, f, g;

   always@ (hex) begin
      case (hex)
         4'b0000: {a, b, c, d, e, f, g} = 7'b0000001;
         4'b0001: {a, b, c, d, e, f, g} = 7'b1001111;
         4'b0010: {a, b, c, d, e, f, g} = 7'b0010010;
         4'b0011: {a, b, c, d, e, f, g} = 7'b0000110;
         4'b0100: {a, b, c, d, e, f, g} = 7'b1001100;
         4'b0101: {a, b, c, d, e, f, g} = 7'b0100100;
         4'b0110: {a, b, c, d, e, f, g} = 7'b0100000;
         4'b0111: {a, b, c, d, e, f, g} = 7'b0001111;
         4'b1000: {a, b, c, d, e, f, g} = 7'b0000000;
         4'b1001: {a, b, c, d, e, f, g} = 7'b0001100;
         4'b1010: {a, b, c, d, e, f, g} = 7'b0001000;
         4'b1011: {a, b, c, d, e, f, g} = 7'b1100000;
         4'b1100: {a, b, c, d, e, f, g} = 7'b0110001;
         4'b1101: {a, b, c, d, e, f, g} = 7'b1000010;
         4'b1110: {a, b, c, d, e, f, g} = 7'b0110000;
         4'b1111: {a, b, c, d, e, f, g} = 7'b0111000;
         default: {a, b, c, d, e, f, g} = 7'b1111111;
      endcase
   end

endmodule