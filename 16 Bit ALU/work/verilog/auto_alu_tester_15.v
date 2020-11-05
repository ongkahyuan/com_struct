/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     INPUT_A = 16h0001
     INPUT_B = 16h0010
     OPCODE = 6b011110
     EXPECTED = 16h0011
*/
module auto_alu_tester_15 (
    input clk,
    input rst,
    input start,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [5:0] opcode_led,
    output reg done
  );
  
  localparam INPUT_A = 16'h0001;
  localparam INPUT_B = 16'h0010;
  localparam OPCODE = 6'h1e;
  localparam EXPECTED = 16'h0011;
  
  
  wire [1-1:0] M_timerClock_out;
  reg [1-1:0] M_timerClock_in;
  edge_detector_3 timerClock (
    .clk(clk),
    .in(M_timerClock_in),
    .out(M_timerClock_out)
  );
  localparam INIT_state = 3'd0;
  localparam A_VALUE_state = 3'd1;
  localparam B_VALUE_state = 3'd2;
  localparam EXPECT_state = 3'd3;
  localparam OUT_state = 3'd4;
  localparam PASS_state = 3'd5;
  localparam FAIL_state = 3'd6;
  
  reg [2:0] M_state_d, M_state_q = INIT_state;
  reg [15:0] M_out_d, M_out_q = 1'h0;
  wire [1-1:0] M_timer_value;
  counter_46 timer (
    .clk(clk),
    .rst(rst),
    .value(M_timer_value)
  );
  wire [7-1:0] M_seg_display_seg;
  wire [4-1:0] M_seg_display_sel;
  reg [16-1:0] M_seg_display_values;
  multi_seven_seg_47 seg_display (
    .clk(clk),
    .rst(rst),
    .values(M_seg_display_values),
    .seg(M_seg_display_seg),
    .sel(M_seg_display_sel)
  );
  
  reg [5:0] alufn;
  
  reg [15:0] a;
  
  reg [15:0] b;
  
  reg [15:0] expected;
  
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  wire [16-1:0] M_alu_out;
  alu_16_bit_7 alu (
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
    M_out_d = M_out_q;
    
    done = 1'h0;
    M_timerClock_in = M_timer_value;
    io_seg = ~M_seg_display_seg;
    io_sel = ~M_seg_display_sel;
    M_seg_display_values = 16'h0123;
    alufn = 6'h1e;
    a = 16'h0001;
    b = 16'h0010;
    expected = 16'h0011;
    M_out_d = M_alu_out;
    opcode_led = 6'h1e;
    
    case (M_state_q)
      INIT_state: begin
        if (start == 1'h1) begin
          M_state_d = A_VALUE_state;
        end
      end
      A_VALUE_state: begin
        M_seg_display_values = {a[12+3-:4], a[8+3-:4], a[4+3-:4], a[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_timerClock_out == 1'h1) begin
          M_state_d = B_VALUE_state;
        end
      end
      B_VALUE_state: begin
        M_seg_display_values = {b[12+3-:4], b[8+3-:4], b[4+3-:4], b[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_timerClock_out == 1'h1) begin
          M_state_d = EXPECT_state;
        end
      end
      EXPECT_state: begin
        M_seg_display_values = {expected[12+3-:4], expected[8+3-:4], expected[4+3-:4], expected[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_timerClock_out == 1'h1) begin
          M_state_d = OUT_state;
        end
      end
      OUT_state: begin
        M_seg_display_values = {M_out_q[12+3-:4], M_out_q[8+3-:4], M_out_q[4+3-:4], M_out_q[0+3-:4]};
        io_seg = ~M_seg_display_seg;
        io_sel = ~M_seg_display_sel;
        if (M_timerClock_out && M_out_q == 16'h0011) begin
          M_state_d = PASS_state;
        end else begin
          if (M_timerClock_out && M_out_q != 16'h0011) begin
            M_state_d = FAIL_state;
          end
        end
      end
      PASS_state: begin
        io_seg = 8'ha1;
        io_sel = 4'he;
        opcode_led = 6'h00;
        done = 1'h1;
      end
      FAIL_state: begin
        io_seg = 8'h8e;
        io_sel = 4'he;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_out_q <= 1'h0;
      M_state_q <= 1'h0;
    end else begin
      M_out_q <= M_out_d;
      M_state_q <= M_state_d;
    end
  end
  
endmodule
