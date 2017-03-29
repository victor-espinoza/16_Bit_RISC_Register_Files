`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// 
// Author:         Victor Espinoza
// Partner:        Edward Mares
// Email:          victor.alfonso94@gmail.com
// Create Date:    09:26:58 10/23/2013
//
// Module Name:    register_file_tb
// File Name:      register_file_tb.v
//
// Description:    This module creates a test bench for us to test our register 
//                 file and make sure that it is working correctly. We achieve
//                 this by writing a RegDump task and a RegWrite task and then 
//                 calling the RegDump once, then writing data to the register 
//                 file using RegWrite, and then calling RegDump one more time 
//                 to make sure that we are able to write data to the file.
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_file_tb;

   // Inputs
   reg clk;
   reg reset;
   reg [15:0] W;
   reg [2:0] W_Adr;
   reg we;
   reg [2:0] R_Adr;
   reg [2:0] S_Adr;

   // Outputs
   wire [15:0] R;
   wire [15:0] S;
   
   //Local Declarations
   integer i;

   // Instantiate the Unit Under Test (UUT)
   register_file uut (
      .clk(clk), 
      .reset(reset), 
      .W(W), 
      .W_Adr(W_Adr), 
      .we(we), 
      .R_Adr(R_Adr), 
      .S_Adr(S_Adr), 
      .R(R), 
      .S(S)
   );

   //Generate 10 ps Clock
    always 
      #5 clk = ~clk;
      
   initial begin
      // Initialize Inputs
      clk = 0;
      reset = 0;
      W = 0;
      W_Adr = 0;
      we = 0;
      R_Adr = 0;
      S_Adr = 0;

        
      // Add stimulus here
      @(negedge clk)
         reset = 1;
      @(posedge clk)
         reset = 0;
      RegDump;
      @(posedge clk)
            #1 $display("R_Adr=%h R=%h || S_Adr=%h S=%h", R_Adr, R, S_Adr, S);
      RegWrite;
      RegDump;
      @(posedge clk)
            #1 $display("R_Adr=%h R=%h || S_Adr=%h S=%h", R_Adr, R, S_Adr, S);
       
      $stop;

   end
   
   task RegDump; 
      for (i=0; i<4; i=i+1)begin
         @(negedge clk)
            R_Adr = i;
            S_Adr = i+4;
            W_Adr = 0;
            we = 0;
            W =  0;
       end
   endtask
      
   task RegWrite;
   integer t = 8'b10101010;
      begin
         for (i=0; i<8; i=i+1)begin
            @(negedge clk)
               {R_Adr, S_Adr} = 6'b0;
               W_Adr = i;
               W = (t>>>i);
               we = 1;
         end
      end
   endtask
       
endmodule
/*@(posedge clk)
            #1 $display("R_Adr=%h R=%h || S_Adr=%h S=%h", R_Adr, R, S_Adr, S);
*/
