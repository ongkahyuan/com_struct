/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

<<<<<<< HEAD:16 Bit ALU/work/verilog/alu_compare_44.v
<<<<<<< HEAD:16 Bit ALU/work/verilog/alu_compare_44.v
module alu_compare_44 (
=======
module alu_compare_9 (
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/alu_compare_9.v
=======
module alu_compare_9 (
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/alu_compare_9.v
    input z,
    input v,
    input n,
    input [3:0] alufn,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    out = 16'h0000;
    
    case (alufn[0+3-:4])
      4'h3: begin
        out[0+0-:1] = z;
      end
      4'h5: begin
        out[0+0-:1] = n ^ v;
      end
      4'h7: begin
        out[0+0-:1] = z | (n ^ v);
      end
      default: begin
        out[0+0-:1] = 1'h0;
      end
    endcase
  end
endmodule
