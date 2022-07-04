# FPGA_ADDERS
## This is my Third year, 6th semester project. In this we had Implemented and Compared various types of 16 bit  adders on FPGA board.


### NOTE: Each adder folder has verious files and those various files play's importanat role while compiling and simuliting the project.
1] .v - Verilog source file. Normally it’s a source file written by the programmer. Design Compiler, and IC Compiler can use this format for the gate-level netlist.
2] _tb.v - Also called the “testbench”. This ensures simulation results matches with post synthesis results. A test bench can have two parts, the one generates input signals for the model to be tested while the other part checks the output signals from the design under test.
.bit - A binary file that contains proprietary header information as well as configuration data. Meant for input to other Xilinx tools, such as PROMGen and iMPACT.
ElbertV2Config.exe - This application will help you to compile your program from PC TO FPGA Board. For this you have to pass bit file through this application to board. 
.ucf - Our each adder folder contains .ucf file. In this file we define the port configuration like input ports output ports.
