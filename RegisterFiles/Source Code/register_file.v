`timescale 1ns / 1ps
/***********************************************************************
 *
 * Author:   Edward Mares
 * Partner:  Victor Espinoza
 * Email:    eddy.mares@gmail.com
 * Filename: register_file.v
 * Date:     October 22, 2013
 * Version:  1.0
 *
 * Notes:    This module is used to pull together our reg16 module and
 *           our 3_to_8_decoder and incorporate them together in order
 *           to successfully create our register file.
 *
 **********************************************************************/

module register_file(clk, reset, W, W_Adr, we, R_Adr, S_Adr, R, S);
   
   //Inputs
   input clk, reset, we;
   input [2:0] W_Adr, R_Adr, S_Adr;
   input [15:0] W;
   
   //Output and Wire declarations
   output wire [15:0] R, S;
   wire w7wire, w6wire, w5wire, w4wire, w3wire, w2wire, w1wire, w0wire;
   wire r7wire, r6wire, r5wire, r4wire, r3wire, r2wire, r1wire, r0wire;
   wire s7wire, s6wire, s5wire, s4wire, s3wire, s2wire, s1wire, s0wire;
   
   //8 instances of our reg16 module
   //  reg16(clk, reset, ld, Din, DA, DB, oeA, oeB);
   reg16 R7 (clk, reset, w7wire, W, R, S, r7wire, s7wire);
   reg16 R6 (clk, reset, w6wire, W, R, S, r6wire, s6wire);
   reg16 R5 (clk, reset, w5wire, W, R, S, r5wire, s5wire);
   reg16 R4 (clk, reset, w4wire, W, R, S, r4wire, s4wire);
   reg16 R3 (clk, reset, w3wire, W, R, S, r3wire, s3wire);
   reg16 R2 (clk, reset, w2wire, W, R, S, r2wire, s2wire);
   reg16 R1 (clk, reset, w1wire, W, R, S, r1wire, s1wire);
   reg16 R0 (clk, reset, w0wire, W, R, S, r0wire, s0wire);
   
   //3 instances of our 3_to_8_decoder module
   //         decoder_3_to_8(in, en, y7, y6, y5, y4, y3, y2, y1, y0);
   decoder_3_to_8 R_decoder (R_Adr, 1'b1, r7wire, r6wire, r5wire, r4wire, r3wire, 
                             r2wire, r1wire, r0wire);
                             
   decoder_3_to_8 W_decoder (W_Adr, we, w7wire, w6wire, w5wire, w4wire, w3wire, 
                             w2wire, w1wire, w0wire);
                             
   decoder_3_to_8 S_decoder (S_Adr, 1'b1, s7wire, s6wire, s5wire, s4wire, s3wire, 
                             s2wire, s1wire, s0wire);
   
endmodule
