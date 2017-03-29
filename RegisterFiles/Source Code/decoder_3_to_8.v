`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Author:         Victor Espinoza
// Partner:        Edward Mares
// Email:          victor.alfonso94@gmail.com
// Create Date:    22:40:13 10/19/2013 
// 
// Module Name:    decoder_3_to_8 
// File Name:      decoder_3_to_8.v
//
// Description:    This decoder consists of three inputs and eight outputs. In 
//                 order for the decoder to function, the enable must be 
//                 asserted. Depending on what the input value is, the appropriate
//                 output values are assigned to the eight outputs, assuming that
//                 the enable is asserted.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module decoder_3_to_8(din, en, y7, y6, y5, y4, y3, y2, y1, y0);

   //Inputs
   input [2:0] din;
   input en;
   output reg y7, y6, y5, y4, y3, y2, y1, y0;
        
   always@(din or en) // theres your problem
      if(en)
         case(din)
            3'b000:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00000001;
            3'b001:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00000010;
            3'b010:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00000100;
            3'b011:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00001000;
            3'b100:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00010000;
            3'b101:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00100000;
            3'b110:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b01000000;
            3'b111:  {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b10000000;
            default: {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00000000;
         endcase
      else
         {y7,y6,y5,y4,y3,y2,y1,y0} = 8'b00000000;
                  
endmodule
