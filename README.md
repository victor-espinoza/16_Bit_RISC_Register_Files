# Lab_5_Register_Files
Project Overview:
Register File implemented using Verilog.  
  
This project revolved around designing and implementing a 8x16 register file using structural Verilog. This means that we have to use eight instances of a 16-bit register and three instances of a 3-to-8 decoder to make our 8x16 register file. Note: all control signals are active-high.  
   
In the project, register selection is done with the W_Adr, R_Adr, and S_Adr address inputs. The 16-bit R data port always has the contents of the register addressed by the R_Adr inputs, and the 16-bit S data port always has the contents of the register addressed by the S_Adr inputs. The register addressed by the W_Adr inputs is written with the data on the 16-bit W data input if-and-only-if the write enable (we) is asserted on the positive edge of the clock.  
  
Here is the schematic for this project:
![ScreenShot](https://cloud.githubusercontent.com/assets/14812721/24824688/f2b0b9f2-1bc4-11e7-9ba0-70d9db9e52b3.jpg)

Dependencies:  
This project was created using Xilinx ISE Project Navigator Version: 14.7.  

  
Project Verification:    
The verification for this project was done by running the circuit through the register_file_tb() module. This module ensures that we are able to write data to and read data from our register file correctly. This was also verified by using the Nexys2 board.
