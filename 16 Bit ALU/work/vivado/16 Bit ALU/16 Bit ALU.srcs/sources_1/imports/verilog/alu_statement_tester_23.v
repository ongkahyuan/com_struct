/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     INPUT_A = 16hffff
     INPUT_B = 16h0001
     OPCODE = 6b100011
     EXPECTED = 16hFFFF
*/
module alu_statement_tester_23 (
    input clk,
    input rst,
    input start,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [5:0] opcode_led,
    output reg done
  );
  
  localparam INPUT_A = 16'hffff;
  localparam INPUT_B = 16'h0001;
  localparam OPCODE = 6'h23;
  localparam EXPECTED = 16'hffff;
  
  
  wire [1-1:0] M_slow_clk_edge_out;
  reg [1-1:0] M_slow_clk_edge_in;
  edge_detector_3 slow_clk_edge (
    .clk(clk),
    .in(M_slow_clk_edge_in),
    .out(M_slow_clk_edge_out)
  );
  localparam INIT_state = 4'd0;
  localparam DISP_A_1_state = 4'd1;
  localparam DISP_A_2_state = 4'd2;
  localparam DISP_B_1_state = 4'd3;
  localparam DISP_B_2_state = 4'd4;
  localparam DISP_O_1_state = 4'd5;
  localparam DISP_O_2_state = 4'd6;
  localparam DONE_state = 4'd7;
  localparam ERROR_1_state = 4'd8;
  localparam ERROR_2_state = 4'd9;
  
  reg [3:0] M_state_d, M_state_q = INIT_state;
  reg [15:0] M_o_d, M_o_q = 1'h0;
  wire [1-1:0] M_slow_clock_value;
  counter_42 slow_clock (
    .clk(clk),
    .rst(rst),
    .value(M_slow_clock_value)
  );
  wire [7-1:0] M_seg_display_seg;
  wire [4-1:0] M_seg_display_sel;
  reg [16-1:0] M_seg_display_values;
  multi_seven_seg_43 seg_display (
    .clk(clk),
    .rst(rst),
    .values(M_seg_display_values),
    .seg(M_seg_display_seg),
    .sel(M_seg_display_sel)
  );
  
  reg [5:0] alufn;
  
  reg [15:0] a;
  
  reg [15:0] b;
  
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  wire [16-1:0] M_alu_out;
  alu_16_bit_41 alu (
    .alufn(alufn),
    .a(a),
    .b(b),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n),
    .out(M_alu_out)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_o_d = M_o_q;
    
    done = 1'h0;
    M_slow_clk_edge_in = M_slow_clock_value;
    io_seg = 8'bzzzzzzzz;
    io_sel = 4'bzzzz;
    M_seg_display_values = 16'h0000;
    alufn = 6'h23;
    a = 16'hffff;
    b = 16'h0001;
    M_o_d = M_alu_out;
    opcode_led = 6'h23;
    
    case (M_state_q)
      INIT_state: begin
        if (start) begin
          M_state_d = DISP_A_1_state;
        end
      end
      DISP_A_1_state: begin
        io_seg = 8'h88;
        io_sel = 4'he;
        if (M_slow_clk_edge_out) begin
          M_state_d = DISP_A_2_state;
        end
      end
      DISP_A_2_state: begin
        M_seg_display_values = {a[12+3-:4], a[8+3-:4], a[4+3-:4], a[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_slow_clk_edge_out) begin
          M_state_d = DISP_B_1_state;
        end
      end
      DISP_B_1_state: begin
        io_seg = 8'h83;
        io_sel = 4'he;
        if (M_slow_clk_edge_out) begin
          M_state_d = DISP_B_2_state;
        end
      end
      DISP_B_2_state: begin
        M_seg_display_values = {b[12+3-:4], b[8+3-:4], b[4+3-:4], b[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_slow_clk_edge_out) begin
          M_state_d = DISP_O_1_state;
        end
      end
      DISP_O_1_state: begin
        io_seg = 8'hc0;
        io_sel = 4'he;
        if (M_slow_clk_edge_out) begin
          M_state_d = DISP_O_2_state;
        end
      end
      DISP_O_2_state: begin
        M_seg_display_values = {M_o_q[12+3-:4], M_o_q[8+3-:4], M_o_q[4+3-:4], M_o_q[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_slow_clk_edge_out && M_o_q == 16'hffff) begin
          M_state_d = DONE_state;
        end else begin
          if (M_slow_clk_edge_out && M_o_q != 16'hffff) begin
            M_state_d = ERROR_1_state;
          end
        end
      end
      DONE_state: begin
        io_seg = 8'ha1;
        io_sel = 4'he;
        opcode_led = 6'h00;
        done = 1'h1;
      end
      ERROR_1_state: begin
        M_seg_display_values = {M_o_q[12+3-:4], M_o_q[8+3-:4], M_o_q[4+3-:4], M_o_q[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_slow_clk_edge_out) begin
          M_state_d = ERROR_2_state;
        end
      end
      ERROR_2_state: begin
        io_seg = 8'h86;
        io_sel = 4'he;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_o_q <= 1'h0;
      M_state_q <= 1'h0;
    end else begin
      M_o_q <= M_o_d;
      M_state_q <= M_state_d;
    end
  end
  
endmodule
