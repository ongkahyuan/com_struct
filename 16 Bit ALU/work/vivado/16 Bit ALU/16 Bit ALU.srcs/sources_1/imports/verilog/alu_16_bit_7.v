/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_16_bit_7 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg z,
    output reg v,
    output reg n,
    output reg [15:0] out
  );
  
  
  
  wire [1-1:0] M_arithmeticUnit_z;
  wire [1-1:0] M_arithmeticUnit_v;
  wire [1-1:0] M_arithmeticUnit_n;
  wire [16-1:0] M_arithmeticUnit_out;
  reg [16-1:0] M_arithmeticUnit_a;
  reg [16-1:0] M_arithmeticUnit_b;
  reg [4-1:0] M_arithmeticUnit_alufn;
  alu_arithmetic_42 arithmeticUnit (
    .a(M_arithmeticUnit_a),
    .b(M_arithmeticUnit_b),
    .alufn(M_arithmeticUnit_alufn),
    .z(M_arithmeticUnit_z),
    .v(M_arithmeticUnit_v),
    .n(M_arithmeticUnit_n),
    .out(M_arithmeticUnit_out)
  );
  
  wire [16-1:0] M_booleanUnit_out;
  reg [16-1:0] M_booleanUnit_a;
  reg [16-1:0] M_booleanUnit_b;
  reg [4-1:0] M_booleanUnit_alufn;
  alu_boolean_43 booleanUnit (
    .a(M_booleanUnit_a),
    .b(M_booleanUnit_b),
    .alufn(M_booleanUnit_alufn),
    .out(M_booleanUnit_out)
  );
  
  wire [16-1:0] M_compareUnit_out;
  reg [1-1:0] M_compareUnit_z;
  reg [1-1:0] M_compareUnit_v;
  reg [1-1:0] M_compareUnit_n;
  reg [4-1:0] M_compareUnit_alufn;
  alu_compare_44 compareUnit (
    .z(M_compareUnit_z),
    .v(M_compareUnit_v),
    .n(M_compareUnit_n),
    .alufn(M_compareUnit_alufn),
    .out(M_compareUnit_out)
  );
  
  wire [16-1:0] M_shifterUnit_out;
  reg [16-1:0] M_shifterUnit_a;
  reg [4-1:0] M_shifterUnit_b;
  reg [2-1:0] M_shifterUnit_alufn;
  alu_shifter_45 shifterUnit (
    .a(M_shifterUnit_a),
    .b(M_shifterUnit_b),
    .alufn(M_shifterUnit_alufn),
    .out(M_shifterUnit_out)
  );
  
  reg int_z;
  
  reg int_v;
  
  reg int_n;
  
  always @* begin
    int_z = 1'h0;
    int_v = 1'h0;
    int_n = 1'h0;
    M_arithmeticUnit_alufn = alufn[0+3-:4];
    M_arithmeticUnit_a = a;
    M_arithmeticUnit_b = b;
    int_z = M_arithmeticUnit_z;
    int_v = M_arithmeticUnit_v;
    int_n = M_arithmeticUnit_n;
    z = int_z;
    v = int_v;
    n = int_n;
    M_compareUnit_alufn = alufn[0+3-:4];
    M_compareUnit_z = int_z;
    M_compareUnit_v = int_v;
    M_compareUnit_n = int_n;
    M_booleanUnit_alufn = alufn[0+3-:4];
    M_booleanUnit_a = a;
    M_booleanUnit_b = b;
    M_shifterUnit_alufn = alufn[0+1-:2];
    M_shifterUnit_a = a;
    M_shifterUnit_b = b[0+3-:4];
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_arithmeticUnit_out;
      end
      2'h1: begin
        out = M_booleanUnit_out;
      end
      2'h2: begin
        out = M_shifterUnit_out;
      end
      2'h3: begin
        out = M_compareUnit_out;
      end
      default: begin
        out = 16'h0000;
      end
    endcase
  end
endmodule
