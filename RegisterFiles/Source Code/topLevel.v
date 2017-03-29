`timescale 1ns / 1ps
/*****************************************************************************
 *
 * Author:   Edward Mares
 * Partner:  Victor Espinoza
 * Email:    eddy.mares@gmail.com
 * Filename: topLevel.v
 * Date:     October 22, 2013
 * Version:  1.0
 *
 * Notes:    This top level module is used to pull together all of the other
 *           modules that we created into one place in order to produce our 
 *           memory and dislpay controller.
 *
 ****************************************************************************/
 
 module topLevel(clk, reset, we, W, w_adr, r_adre, s_adr, a, b, c, d, e, f, g, a3, 
  a2, a1, a0);
   //            clk,reset, btn2, input W: 4slide switch, write addres, reg address,
   //              and the rest are anodes

   //Inputs
   input       clk, reset, we;
   input [3:0] W;
   input [1:0] w_adr, r_adre, s_adr;
   
   //Output
   output wire a, b, c, d, e, f, g, a3, a2, a1, a0;
   
   //Wire declarations
   wire we_out, clk_500;
   wire [15:0] R, S;
   
   //       clk_500Hz(clk, reset, clk_out);
   clk_500Hz    clk1 (clk, reset, clk_500);
   
   //         debounce(clk, reset, Din, Dout);
   debounce  debounce (clk_500, reset, we, we_out);
   
   //    register_file(clk, reset, W, W_Adr, we, R_Adr, S_Adr, R, S);
   register_file regi (clk, reset, {12'hFFF, W}, {1'b0, w_adr}, we_out,
                       {1'b0, r_adre}, {1'b0, s_adr}, R, S);
   
   //         display_controller(clk, reset, ad_high, ad_low, d_high,   
   //                            d_low, a3, a2, a1, a0, a, b, c, d, 
   //                            e, f, g);
   display_controller disp_cont (clk, reset, R[7:4], R[3:0], 
                                 S[7:4], S[3:0], a3, a2, a1, a0,
                                 a, b, c, d, e, f, g);

endmodule
