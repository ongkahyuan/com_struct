/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_boolean_8 (
    input [15:0] a,
    input [15:0] b,
    input [3:0] alufn,
    output reg [15:0] out
  );
  
  
  
  always @* begin
    
    case (alufn[0+3-:4])
      4'h8: begin
        out = a & b;
      end
      4'he: begin
        out = a | b;
      end
      4'h6: begin
        out = a ^ b;
      end
      4'ha: begin
        out = a;
      end
      4'h1: begin
        out = ~(a & b);
      end
      4'hf: begin
        out = ~(a | b);
      end
      4'h7: begin
        out = ~(a ^ b);
      end
      default: begin
        out = 16'h0000;
      end
    endcase
  end
endmodule
