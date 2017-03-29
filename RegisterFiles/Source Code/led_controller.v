`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Author:         Victor Espinoza
// Partner:        Edward Mares
// Email:          victor.alfonso94@gmail.com
// 
// Create Date:    20:10:05 10/12/2013 
// Design Name: 
// Module Name:    led_controller 
// File Name:      led_controller.v
//
// Description:    LED controller based on state diagram. Chooses which anodes 
//                 display and when - according to the LED clock.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module led_controller(clk, reset, a3, a2, a1, a0, seg_sel);

   //Input
   input       clk, reset;
   
   //Output and reg declarations
   output      a3, a2, a1, a0;
   reg         a3, a2, a1, a0;
   output      [1:0] seg_sel;   
   reg         [1:0] seg_sel;

   //***********************
   // state register and
   // next_state variables
   //***********************

   reg       [1:0] present_state;
   reg       [1:0] next_state;

   //************************************************************************
   // Next State Combinational Logic
   //(next state values can change anytime but will only be "clocked" below)
   //************************************************************************

   always @( present_state )
      begin
         case ( present_state ) 
            //next state combinations for present states
            2'b00 : next_state = 2'b01;
            2'b01 : next_state = 2'b10;
            2'b10 : next_state = 2'b11;
            2'b11 : next_state = 2'b00;
         
            //next state combinations for all other present states
            default: next_state = 2'b00;
         
         endcase   
      end

   //****************************************
   // State Register Logic (Sequential Logic)
   //****************************************

   always @(posedge clk or posedge reset)
      begin
         if (reset == 1'b1)
            //Got a reset, so set state register to all 0's
            present_state = 2'b00;         
         else
            //Got a posedge, so update state register with next state
            present_state = next_state;
      end
               
   //************************************************************************
   // Output Combinational Logic
   //(output values can change only when a present state changes)
   //************************************************************************
      
   always @( present_state )
      begin
         case ( present_state )       
            //output combinations for present states
            2'b00  : {a3, a2, a1, a0} = 4'b1110;   //a[0] asserted
            2'b01  : {a3, a2, a1, a0} = 4'b1101;   //a[1] asserted
            2'b10  : {a3, a2, a1, a0} = 4'b1011;   //a[2] asserted
            2'b11  : {a3, a2, a1, a0} = 4'b0111;   //a[3] asserted
         
            //output combinations for all other present states
            default : {a3, a2, a1, a0} = 4'b1110;   
         endcase
      end
      
   //************************************************************************
   // Segment Select Logic
   //************************************************************************
      
   always @( present_state )
      begin
         case ( present_state )           
            //Segment Select combinations for present states
            2'b00 : seg_sel = 2'b00;   //a[0] seg_sel
            2'b01 : seg_sel = 2'b01;   //a[1] seg_sel
            2'b10 : seg_sel = 2'b10;   //a[2] seg_sel
            2'b11 : seg_sel = 2'b11;   //a[3] seg_sel
         
            //Segment Select combinations for all other present states
            default: seg_sel = 2'b00;   //none   
         endcase
      end
          
endmodule
