# Randomizer-Module

### Design Specification 
• It's a pseudorandom binary sequence (PRBS) generator that implements the polynomial ![equation](https://latex.codecogs.com/gif.latex?1%20&plus;%20X%5E%7B14%7D%20&plus;%20X%5E%7B15%7D) which is used to randomize a sequence of binary inputs Using a linear feedback shift register (LFSR). 

• The randomizer is initialized with the vector:  [LSB] 0 1 1 0 1 1 1 0 0 0 1 0 1 0 1 [MSB]. 

• In addition to clock (clk) and asynchronous reset (reset), there is a synchronous seed load (load) and clock enable (en) inputs 

**load**: to load a data vector as a seed to the randomizer

**enable**: to enable the randomizer to work, if it's 1 then the module will generate random bits, if it's 0 the module will stop randomizing and output the same bits.

### Example:

• Input Data (Hex):  AC BC D2 11 4D AE 15 77 C6 DB F4 C9 

• Randomized Data (Hex):  55 8A C4 A5 3A 17 24 E1 63 AC 2B F9 
