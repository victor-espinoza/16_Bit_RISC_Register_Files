`timescale 1ns / 1ps
/***********************************************************************
 *
 * Author:   Edward Mares
 * Partner:  Victor Espinoza
 * Email:    eddy.mares@gmail.com
 * Filename: led_clk.v
 * Date:     October 13, 2013
 * Version:  1.0
 *
 * Notes:    Display controller that implements the LED clock, LED 
 *           controller, the address multiplexer, and the hex to 7 
 *           segment display.
 *
 **********************************************************************/
module display_controller(clk, reset, ad_high, ad_low, d_high, d_low,  
                          a3, a2, a1, a0, a, b, c, d, e, f, g);
   //Inputs   
   input             clk, reset;
   input       [3:0] ad_high, ad_low, d_high, d_low;
   
   //Output
   output             a3, a2, a1, a0, a, b, c, d, e, f, g;
   
   //Wire Declarations
   wire               a3, a2, a1, a0, a, b, c, d, e, f, g;
   wire         [3:0] ad_out;
   wire               clk_250;
   wire         [1:0] seg_sel;
   
   //initialize LED clock module
   //                led_clk(clk, reset, clk_out);
   led_clk        LED_clk   (clk,    reset,   clk_250);
   
   //initialize LED controller module
   //        led_controller(clk, reset, a3, a2, a1, a0, seg_sel);
   led_controller LED_contr(clk_250, reset, a3, a2, a1, a0, seg_sel);
   
   //initialize address mux module
   //                ad_mux(seg_sel, ad_high, ad_low, d_high, d_low, ad_out);
   ad_mux         Addr_mux (seg_sel, ad_high, ad_low, d_high, d_low, ad_out);

   //initialize hex to seven segment display module
   //           Hex_to_7seg(a, b, c, d, e, f, g, hex);
   Hex_to_7seg   hex_module(a, b, c, d, e, f, g, ad_out);
   
endmodule
