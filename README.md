# Randomizer-Module
### Design Specification 
• Using a linear feedback shift register (LFSR), design a pseudorandom binary sequence (PRBS) generator that implements the polynomial 15 14 1 X X + + shown in Figure 1 which is used to randomize a sequence of binary inputs. 

• The randomizer is initialized with the vector: 
o [LSB] 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 [MSB]. 

• In addition to clock (clk) and asynchronous reset (reset), include a synchronous seed load (load) and clock enable (en) inputs 

• Validation: using the following input data sequence and the corresponding data output to validate your design 

• Input Data (Hex): 
o AC BC D2 11 4D AE 15 77 C6 DB F4 C9 

• Randomized Data (Hex): 
o 55 8A C4 A5 3A 17 24 E1 63 AC 2B F9 
