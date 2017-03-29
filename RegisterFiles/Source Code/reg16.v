`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Author:         Victor Espinoza
// Partner:        Edward Mares
// Email:          victor.alfonso94@gmail.com
// Create Date:    21:51:12 10/19/2013 
// 
// Module Name:    reg16 
// File Name:      reg16.v
//
// Description:    This reg16 module consists of an asynchrounous reset and a 
//                 synchronous load for the Din input. The register consists of 
//                 two 16-bit output ports (DA and DB) that we use in designing
//                 our register file. Both DA and DB have tri-state outputs that 
//                 are controlled by the respective output enable (oeA and oeB).
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module reg16(clk, reset, ld, Din, DA, DB, oeA, oeB);

   //Inputs
   input          clk, reset, ld, oeA, oeB;
   input  [15:0] Din;
   
   //Output
   output [15:0] DA, DB;
   reg    [15:0] Dout;
   
   //behavioral section for writing to the register
   always @(posedge clk or posedge reset)
      if (reset)
         Dout <= 16'b0;
      else
         if (ld)
            Dout <= Din;
      
   //conditional continuous assignments for reading the register
   assign DA = oeA ? Dout : 16'hz;
   assign DB = oeB ? Dout : 16'hz;
         
endmodule
