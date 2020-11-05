/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

<<<<<<< HEAD:16 Bit ALU/work/verilog/alu_arithmetic_42.v
module alu_arithmetic_42 (
=======
module alu_arithmetic_7 (
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/alu_arithmetic_7.v
    input [15:0] a,
    input [15:0] b,
    input [1:0] alufn,
    output reg z,
    output reg v,
    output reg n,
    output reg [15:0] out
  );
  
  
  
  reg [15:0] s;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        s = a + b;
      end
      2'h1: begin
        s = a - b;
      end
      2'h2: begin
        s = (a * b);
      end
      default: begin
        s = 1'h0;
      end
    endcase
    z = s == 1'h0;
    v = (a[15+0-:1] & (b[15+0-:1] ^ alufn[0+0-:1]) & ~s[15+0-:1]) | (~a[15+0-:1] & ~(b[15+0-:1] ^ alufn[0+0-:1]) & s[15+0-:1]);
    n = s[15+0-:1];
    out = s;
  end
endmodule
