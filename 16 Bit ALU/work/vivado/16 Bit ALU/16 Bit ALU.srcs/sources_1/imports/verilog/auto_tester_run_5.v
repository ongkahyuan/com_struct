/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module auto_tester_run_5 (
    input clk,
    input rst,
    input start,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [5:0] opcode_led
  );
  
  
  
  localparam STANDBY_autostate = 6'd0;
  localparam TEST_0_autostate = 6'd1;
  localparam TEST_1_autostate = 6'd2;
  localparam TEST_2_autostate = 6'd3;
  localparam TEST_3_autostate = 6'd4;
  localparam TEST_4_autostate = 6'd5;
  localparam TEST_5_autostate = 6'd6;
  localparam TEST_6_autostate = 6'd7;
  localparam TEST_7_autostate = 6'd8;
  localparam TEST_8_autostate = 6'd9;
  localparam TEST_9_autostate = 6'd10;
  localparam TEST_10_autostate = 6'd11;
  localparam TEST_11_autostate = 6'd12;
  localparam TEST_12_autostate = 6'd13;
  localparam TEST_13_autostate = 6'd14;
  localparam TEST_14_autostate = 6'd15;
  localparam TEST_15_autostate = 6'd16;
  localparam TEST_16_autostate = 6'd17;
  localparam TEST_17_autostate = 6'd18;
  localparam TEST_18_autostate = 6'd19;
  localparam TEST_19_autostate = 6'd20;
  localparam TEST_20_autostate = 6'd21;
  localparam TEST_21_autostate = 6'd22;
  localparam TEST_22_autostate = 6'd23;
  localparam TEST_23_autostate = 6'd24;
  localparam TEST_24_autostate = 6'd25;
  localparam TEST_25_autostate = 6'd26;
  localparam TEST_26_autostate = 6'd27;
  localparam TEST_27_autostate = 6'd28;
  localparam TEST_28_autostate = 6'd29;
  localparam TEST_29_autostate = 6'd30;
  localparam TEST_30_autostate = 6'd31;
  localparam TEST_31_autostate = 6'd32;
  localparam TEST_32_autostate = 6'd33;
  localparam TEST_33_autostate = 6'd34;
  
  reg [5:0] M_autostate_d, M_autostate_q = STANDBY_autostate;
  wire [8-1:0] M_test_0_io_seg;
  wire [4-1:0] M_test_0_io_sel;
  wire [6-1:0] M_test_0_opcode_led;
  wire [1-1:0] M_test_0_done;
  reg [1-1:0] M_test_0_start;
  auto_alu_tester_8 test_0 (
    .clk(clk),
    .rst(rst),
    .start(M_test_0_start),
    .io_seg(M_test_0_io_seg),
    .io_sel(M_test_0_io_sel),
    .opcode_led(M_test_0_opcode_led),
    .done(M_test_0_done)
  );
  wire [8-1:0] M_test_1_io_seg;
  wire [4-1:0] M_test_1_io_sel;
  wire [6-1:0] M_test_1_opcode_led;
  wire [1-1:0] M_test_1_done;
  reg [1-1:0] M_test_1_start;
  auto_alu_tester_9 test_1 (
    .clk(clk),
    .rst(rst),
    .start(M_test_1_start),
    .io_seg(M_test_1_io_seg),
    .io_sel(M_test_1_io_sel),
    .opcode_led(M_test_1_opcode_led),
    .done(M_test_1_done)
  );
  wire [8-1:0] M_test_2_io_seg;
  wire [4-1:0] M_test_2_io_sel;
  wire [6-1:0] M_test_2_opcode_led;
  wire [1-1:0] M_test_2_done;
  reg [1-1:0] M_test_2_start;
  auto_alu_tester_10 test_2 (
    .clk(clk),
    .rst(rst),
    .start(M_test_2_start),
    .io_seg(M_test_2_io_seg),
    .io_sel(M_test_2_io_sel),
    .opcode_led(M_test_2_opcode_led),
    .done(M_test_2_done)
  );
  wire [8-1:0] M_test_3_io_seg;
  wire [4-1:0] M_test_3_io_sel;
  wire [6-1:0] M_test_3_opcode_led;
  wire [1-1:0] M_test_3_done;
  reg [1-1:0] M_test_3_start;
  auto_alu_tester_11 test_3 (
    .clk(clk),
    .rst(rst),
    .start(M_test_3_start),
    .io_seg(M_test_3_io_seg),
    .io_sel(M_test_3_io_sel),
    .opcode_led(M_test_3_opcode_led),
    .done(M_test_3_done)
  );
  wire [8-1:0] M_test_4_io_seg;
  wire [4-1:0] M_test_4_io_sel;
  wire [6-1:0] M_test_4_opcode_led;
  wire [1-1:0] M_test_4_done;
  reg [1-1:0] M_test_4_start;
  auto_alu_tester_12 test_4 (
    .clk(clk),
    .rst(rst),
    .start(M_test_4_start),
    .io_seg(M_test_4_io_seg),
    .io_sel(M_test_4_io_sel),
    .opcode_led(M_test_4_opcode_led),
    .done(M_test_4_done)
  );
  wire [8-1:0] M_test_5_io_seg;
  wire [4-1:0] M_test_5_io_sel;
  wire [6-1:0] M_test_5_opcode_led;
  wire [1-1:0] M_test_5_done;
  reg [1-1:0] M_test_5_start;
  auto_alu_tester_13 test_5 (
    .clk(clk),
    .rst(rst),
    .start(M_test_5_start),
    .io_seg(M_test_5_io_seg),
    .io_sel(M_test_5_io_sel),
    .opcode_led(M_test_5_opcode_led),
    .done(M_test_5_done)
  );
  wire [8-1:0] M_test_6_io_seg;
  wire [4-1:0] M_test_6_io_sel;
  wire [6-1:0] M_test_6_opcode_led;
  wire [1-1:0] M_test_6_done;
  reg [1-1:0] M_test_6_start;
  auto_alu_tester_14 test_6 (
    .clk(clk),
    .rst(rst),
    .start(M_test_6_start),
    .io_seg(M_test_6_io_seg),
    .io_sel(M_test_6_io_sel),
    .opcode_led(M_test_6_opcode_led),
    .done(M_test_6_done)
  );
  wire [8-1:0] M_test_7_io_seg;
  wire [4-1:0] M_test_7_io_sel;
  wire [6-1:0] M_test_7_opcode_led;
  wire [1-1:0] M_test_7_done;
  reg [1-1:0] M_test_7_start;
  auto_alu_tester_15 test_7 (
    .clk(clk),
    .rst(rst),
    .start(M_test_7_start),
    .io_seg(M_test_7_io_seg),
    .io_sel(M_test_7_io_sel),
    .opcode_led(M_test_7_opcode_led),
    .done(M_test_7_done)
  );
  wire [8-1:0] M_test_8_io_seg;
  wire [4-1:0] M_test_8_io_sel;
  wire [6-1:0] M_test_8_opcode_led;
  wire [1-1:0] M_test_8_done;
  reg [1-1:0] M_test_8_start;
  auto_alu_tester_16 test_8 (
    .clk(clk),
    .rst(rst),
    .start(M_test_8_start),
    .io_seg(M_test_8_io_seg),
    .io_sel(M_test_8_io_sel),
    .opcode_led(M_test_8_opcode_led),
    .done(M_test_8_done)
  );
  wire [8-1:0] M_test_9_io_seg;
  wire [4-1:0] M_test_9_io_sel;
  wire [6-1:0] M_test_9_opcode_led;
  wire [1-1:0] M_test_9_done;
  reg [1-1:0] M_test_9_start;
  auto_alu_tester_17 test_9 (
    .clk(clk),
    .rst(rst),
    .start(M_test_9_start),
    .io_seg(M_test_9_io_seg),
    .io_sel(M_test_9_io_sel),
    .opcode_led(M_test_9_opcode_led),
    .done(M_test_9_done)
  );
  wire [8-1:0] M_test_10_io_seg;
  wire [4-1:0] M_test_10_io_sel;
  wire [6-1:0] M_test_10_opcode_led;
  wire [1-1:0] M_test_10_done;
  reg [1-1:0] M_test_10_start;
  auto_alu_tester_18 test_10 (
    .clk(clk),
    .rst(rst),
    .start(M_test_10_start),
    .io_seg(M_test_10_io_seg),
    .io_sel(M_test_10_io_sel),
    .opcode_led(M_test_10_opcode_led),
    .done(M_test_10_done)
  );
  wire [8-1:0] M_test_11_io_seg;
  wire [4-1:0] M_test_11_io_sel;
  wire [6-1:0] M_test_11_opcode_led;
  wire [1-1:0] M_test_11_done;
  reg [1-1:0] M_test_11_start;
  auto_alu_tester_19 test_11 (
    .clk(clk),
    .rst(rst),
    .start(M_test_11_start),
    .io_seg(M_test_11_io_seg),
    .io_sel(M_test_11_io_sel),
    .opcode_led(M_test_11_opcode_led),
    .done(M_test_11_done)
  );
  wire [8-1:0] M_test_12_io_seg;
  wire [4-1:0] M_test_12_io_sel;
  wire [6-1:0] M_test_12_opcode_led;
  wire [1-1:0] M_test_12_done;
  reg [1-1:0] M_test_12_start;
  auto_alu_tester_20 test_12 (
    .clk(clk),
    .rst(rst),
    .start(M_test_12_start),
    .io_seg(M_test_12_io_seg),
    .io_sel(M_test_12_io_sel),
    .opcode_led(M_test_12_opcode_led),
    .done(M_test_12_done)
  );
  wire [8-1:0] M_test_13_io_seg;
  wire [4-1:0] M_test_13_io_sel;
  wire [6-1:0] M_test_13_opcode_led;
  wire [1-1:0] M_test_13_done;
  reg [1-1:0] M_test_13_start;
  auto_alu_tester_21 test_13 (
    .clk(clk),
    .rst(rst),
    .start(M_test_13_start),
    .io_seg(M_test_13_io_seg),
    .io_sel(M_test_13_io_sel),
    .opcode_led(M_test_13_opcode_led),
    .done(M_test_13_done)
  );
  wire [8-1:0] M_test_14_io_seg;
  wire [4-1:0] M_test_14_io_sel;
  wire [6-1:0] M_test_14_opcode_led;
  wire [1-1:0] M_test_14_done;
  reg [1-1:0] M_test_14_start;
  auto_alu_tester_22 test_14 (
    .clk(clk),
    .rst(rst),
    .start(M_test_14_start),
    .io_seg(M_test_14_io_seg),
    .io_sel(M_test_14_io_sel),
    .opcode_led(M_test_14_opcode_led),
    .done(M_test_14_done)
  );
  wire [8-1:0] M_test_15_io_seg;
  wire [4-1:0] M_test_15_io_sel;
  wire [6-1:0] M_test_15_opcode_led;
  wire [1-1:0] M_test_15_done;
  reg [1-1:0] M_test_15_start;
  auto_alu_tester_23 test_15 (
    .clk(clk),
    .rst(rst),
    .start(M_test_15_start),
    .io_seg(M_test_15_io_seg),
    .io_sel(M_test_15_io_sel),
    .opcode_led(M_test_15_opcode_led),
    .done(M_test_15_done)
  );
  wire [8-1:0] M_test_16_io_seg;
  wire [4-1:0] M_test_16_io_sel;
  wire [6-1:0] M_test_16_opcode_led;
  wire [1-1:0] M_test_16_done;
  reg [1-1:0] M_test_16_start;
  auto_alu_tester_24 test_16 (
    .clk(clk),
    .rst(rst),
    .start(M_test_16_start),
    .io_seg(M_test_16_io_seg),
    .io_sel(M_test_16_io_sel),
    .opcode_led(M_test_16_opcode_led),
    .done(M_test_16_done)
  );
  wire [8-1:0] M_test_17_io_seg;
  wire [4-1:0] M_test_17_io_sel;
  wire [6-1:0] M_test_17_opcode_led;
  wire [1-1:0] M_test_17_done;
  reg [1-1:0] M_test_17_start;
  auto_alu_tester_25 test_17 (
    .clk(clk),
    .rst(rst),
    .start(M_test_17_start),
    .io_seg(M_test_17_io_seg),
    .io_sel(M_test_17_io_sel),
    .opcode_led(M_test_17_opcode_led),
    .done(M_test_17_done)
  );
  wire [8-1:0] M_test_18_io_seg;
  wire [4-1:0] M_test_18_io_sel;
  wire [6-1:0] M_test_18_opcode_led;
  wire [1-1:0] M_test_18_done;
  reg [1-1:0] M_test_18_start;
  auto_alu_tester_26 test_18 (
    .clk(clk),
    .rst(rst),
    .start(M_test_18_start),
    .io_seg(M_test_18_io_seg),
    .io_sel(M_test_18_io_sel),
    .opcode_led(M_test_18_opcode_led),
    .done(M_test_18_done)
  );
  wire [8-1:0] M_test_19_io_seg;
  wire [4-1:0] M_test_19_io_sel;
  wire [6-1:0] M_test_19_opcode_led;
  wire [1-1:0] M_test_19_done;
  reg [1-1:0] M_test_19_start;
  auto_alu_tester_27 test_19 (
    .clk(clk),
    .rst(rst),
    .start(M_test_19_start),
    .io_seg(M_test_19_io_seg),
    .io_sel(M_test_19_io_sel),
    .opcode_led(M_test_19_opcode_led),
    .done(M_test_19_done)
  );
  wire [8-1:0] M_test_20_io_seg;
  wire [4-1:0] M_test_20_io_sel;
  wire [6-1:0] M_test_20_opcode_led;
  wire [1-1:0] M_test_20_done;
  reg [1-1:0] M_test_20_start;
  auto_alu_tester_28 test_20 (
    .clk(clk),
    .rst(rst),
    .start(M_test_20_start),
    .io_seg(M_test_20_io_seg),
    .io_sel(M_test_20_io_sel),
    .opcode_led(M_test_20_opcode_led),
    .done(M_test_20_done)
  );
  wire [8-1:0] M_test_21_io_seg;
  wire [4-1:0] M_test_21_io_sel;
  wire [6-1:0] M_test_21_opcode_led;
  wire [1-1:0] M_test_21_done;
  reg [1-1:0] M_test_21_start;
  auto_alu_tester_29 test_21 (
    .clk(clk),
    .rst(rst),
    .start(M_test_21_start),
    .io_seg(M_test_21_io_seg),
    .io_sel(M_test_21_io_sel),
    .opcode_led(M_test_21_opcode_led),
    .done(M_test_21_done)
  );
  wire [8-1:0] M_test_22_io_seg;
  wire [4-1:0] M_test_22_io_sel;
  wire [6-1:0] M_test_22_opcode_led;
  wire [1-1:0] M_test_22_done;
  reg [1-1:0] M_test_22_start;
  auto_alu_tester_30 test_22 (
    .clk(clk),
    .rst(rst),
    .start(M_test_22_start),
    .io_seg(M_test_22_io_seg),
    .io_sel(M_test_22_io_sel),
    .opcode_led(M_test_22_opcode_led),
    .done(M_test_22_done)
  );
  wire [8-1:0] M_test_23_io_seg;
  wire [4-1:0] M_test_23_io_sel;
  wire [6-1:0] M_test_23_opcode_led;
  wire [1-1:0] M_test_23_done;
  reg [1-1:0] M_test_23_start;
  auto_alu_tester_31 test_23 (
    .clk(clk),
    .rst(rst),
    .start(M_test_23_start),
    .io_seg(M_test_23_io_seg),
    .io_sel(M_test_23_io_sel),
    .opcode_led(M_test_23_opcode_led),
    .done(M_test_23_done)
  );
  wire [8-1:0] M_test_24_io_seg;
  wire [4-1:0] M_test_24_io_sel;
  wire [6-1:0] M_test_24_opcode_led;
  wire [1-1:0] M_test_24_done;
  reg [1-1:0] M_test_24_start;
  auto_alu_tester_32 test_24 (
    .clk(clk),
    .rst(rst),
    .start(M_test_24_start),
    .io_seg(M_test_24_io_seg),
    .io_sel(M_test_24_io_sel),
    .opcode_led(M_test_24_opcode_led),
    .done(M_test_24_done)
  );
  wire [8-1:0] M_test_25_io_seg;
  wire [4-1:0] M_test_25_io_sel;
  wire [6-1:0] M_test_25_opcode_led;
  wire [1-1:0] M_test_25_done;
  reg [1-1:0] M_test_25_start;
  auto_alu_tester_33 test_25 (
    .clk(clk),
    .rst(rst),
    .start(M_test_25_start),
    .io_seg(M_test_25_io_seg),
    .io_sel(M_test_25_io_sel),
    .opcode_led(M_test_25_opcode_led),
    .done(M_test_25_done)
  );
  wire [8-1:0] M_test_26_io_seg;
  wire [4-1:0] M_test_26_io_sel;
  wire [6-1:0] M_test_26_opcode_led;
  wire [1-1:0] M_test_26_done;
  reg [1-1:0] M_test_26_start;
  auto_alu_tester_34 test_26 (
    .clk(clk),
    .rst(rst),
    .start(M_test_26_start),
    .io_seg(M_test_26_io_seg),
    .io_sel(M_test_26_io_sel),
    .opcode_led(M_test_26_opcode_led),
    .done(M_test_26_done)
  );
  wire [8-1:0] M_test_27_io_seg;
  wire [4-1:0] M_test_27_io_sel;
  wire [6-1:0] M_test_27_opcode_led;
  wire [1-1:0] M_test_27_done;
  reg [1-1:0] M_test_27_start;
  auto_alu_tester_35 test_27 (
    .clk(clk),
    .rst(rst),
    .start(M_test_27_start),
    .io_seg(M_test_27_io_seg),
    .io_sel(M_test_27_io_sel),
    .opcode_led(M_test_27_opcode_led),
    .done(M_test_27_done)
  );
  wire [8-1:0] M_test_28_io_seg;
  wire [4-1:0] M_test_28_io_sel;
  wire [6-1:0] M_test_28_opcode_led;
  wire [1-1:0] M_test_28_done;
  reg [1-1:0] M_test_28_start;
  auto_alu_tester_36 test_28 (
    .clk(clk),
    .rst(rst),
    .start(M_test_28_start),
    .io_seg(M_test_28_io_seg),
    .io_sel(M_test_28_io_sel),
    .opcode_led(M_test_28_opcode_led),
    .done(M_test_28_done)
  );
  wire [8-1:0] M_test_29_io_seg;
  wire [4-1:0] M_test_29_io_sel;
  wire [6-1:0] M_test_29_opcode_led;
  wire [1-1:0] M_test_29_done;
  reg [1-1:0] M_test_29_start;
  auto_alu_tester_37 test_29 (
    .clk(clk),
    .rst(rst),
    .start(M_test_29_start),
    .io_seg(M_test_29_io_seg),
    .io_sel(M_test_29_io_sel),
    .opcode_led(M_test_29_opcode_led),
    .done(M_test_29_done)
  );
  wire [8-1:0] M_test_30_io_seg;
  wire [4-1:0] M_test_30_io_sel;
  wire [6-1:0] M_test_30_opcode_led;
  wire [1-1:0] M_test_30_done;
  reg [1-1:0] M_test_30_start;
  auto_alu_tester_38 test_30 (
    .clk(clk),
    .rst(rst),
    .start(M_test_30_start),
    .io_seg(M_test_30_io_seg),
    .io_sel(M_test_30_io_sel),
    .opcode_led(M_test_30_opcode_led),
    .done(M_test_30_done)
  );
  wire [8-1:0] M_test_31_io_seg;
  wire [4-1:0] M_test_31_io_sel;
  wire [6-1:0] M_test_31_opcode_led;
  wire [1-1:0] M_test_31_done;
  reg [1-1:0] M_test_31_start;
  auto_alu_tester_39 test_31 (
    .clk(clk),
    .rst(rst),
    .start(M_test_31_start),
    .io_seg(M_test_31_io_seg),
    .io_sel(M_test_31_io_sel),
    .opcode_led(M_test_31_opcode_led),
    .done(M_test_31_done)
  );
  wire [8-1:0] M_test_32_io_seg;
  wire [4-1:0] M_test_32_io_sel;
  wire [6-1:0] M_test_32_opcode_led;
  wire [1-1:0] M_test_32_done;
  reg [1-1:0] M_test_32_start;
  auto_alu_tester_40 test_32 (
    .clk(clk),
    .rst(rst),
    .start(M_test_32_start),
    .io_seg(M_test_32_io_seg),
    .io_sel(M_test_32_io_sel),
    .opcode_led(M_test_32_opcode_led),
    .done(M_test_32_done)
  );
  wire [8-1:0] M_test_33_io_seg;
  wire [4-1:0] M_test_33_io_sel;
  wire [6-1:0] M_test_33_opcode_led;
  wire [1-1:0] M_test_33_done;
  reg [1-1:0] M_test_33_start;
  auto_alu_tester_41 test_33 (
    .clk(clk),
    .rst(rst),
    .start(M_test_33_start),
    .io_seg(M_test_33_io_seg),
    .io_sel(M_test_33_io_sel),
    .opcode_led(M_test_33_opcode_led),
    .done(M_test_33_done)
  );
  
  always @* begin
    M_autostate_d = M_autostate_q;
    
    io_seg = 1'h0;
    io_sel = 1'h0;
    opcode_led = 1'h0;
    M_test_0_start = 1'h0;
    M_test_1_start = 1'h0;
    M_test_2_start = 1'h0;
    M_test_3_start = 1'h0;
    M_test_4_start = 1'h0;
    M_test_5_start = 1'h0;
    M_test_6_start = 1'h0;
    M_test_7_start = 1'h0;
    M_test_8_start = 1'h0;
    M_test_9_start = 1'h0;
    M_test_10_start = 1'h0;
    M_test_11_start = 1'h0;
    M_test_12_start = 1'h0;
    M_test_13_start = 1'h0;
    M_test_14_start = 1'h0;
    M_test_15_start = 1'h0;
    M_test_16_start = 1'h0;
    M_test_17_start = 1'h0;
    M_test_18_start = 1'h0;
    M_test_19_start = 1'h0;
    M_test_20_start = 1'h0;
    M_test_21_start = 1'h0;
    M_test_22_start = 1'h0;
    M_test_23_start = 1'h0;
    M_test_24_start = 1'h0;
    M_test_25_start = 1'h0;
    M_test_26_start = 1'h0;
    M_test_27_start = 1'h0;
    M_test_28_start = 1'h0;
    M_test_29_start = 1'h0;
    M_test_30_start = 1'h0;
    M_test_31_start = 1'h0;
    M_test_32_start = 1'h0;
    M_test_33_start = 1'h0;
    
    case (M_autostate_q)
      STANDBY_autostate: begin
        if (start == 1'h1) begin
          M_autostate_d = TEST_0_autostate;
        end
      end
      TEST_0_autostate: begin
        io_seg = M_test_0_io_seg;
        io_sel = M_test_0_io_sel;
        opcode_led = M_test_0_opcode_led;
        M_test_0_start = 1'h1;
        if (M_test_0_done == 1'h1) begin
          M_autostate_d = TEST_1_autostate;
        end
      end
      TEST_1_autostate: begin
        io_seg = M_test_1_io_seg;
        io_sel = M_test_1_io_sel;
        opcode_led = M_test_1_opcode_led;
        M_test_1_start = 1'h1;
        if (M_test_1_done == 1'h1) begin
          M_autostate_d = TEST_2_autostate;
        end
      end
      TEST_2_autostate: begin
        io_seg = M_test_2_io_seg;
        io_sel = M_test_2_io_sel;
        opcode_led = M_test_2_opcode_led;
        M_test_2_start = 1'h1;
        if (M_test_2_done == 1'h1) begin
          M_autostate_d = TEST_3_autostate;
        end
      end
      TEST_3_autostate: begin
        io_seg = M_test_3_io_seg;
        io_sel = M_test_3_io_sel;
        opcode_led = M_test_3_opcode_led;
        M_test_3_start = 1'h1;
        if (M_test_3_done == 1'h1) begin
          M_autostate_d = TEST_4_autostate;
        end
      end
      TEST_4_autostate: begin
        io_seg = M_test_4_io_seg;
        io_sel = M_test_4_io_sel;
        opcode_led = M_test_4_opcode_led;
        M_test_4_start = 1'h1;
        if (M_test_4_done == 1'h1) begin
          M_autostate_d = TEST_5_autostate;
        end
      end
      TEST_5_autostate: begin
        io_seg = M_test_5_io_seg;
        io_sel = M_test_5_io_sel;
        opcode_led = M_test_5_opcode_led;
        M_test_5_start = 1'h1;
        if (M_test_5_done == 1'h1) begin
          M_autostate_d = TEST_6_autostate;
        end
      end
      TEST_6_autostate: begin
        io_seg = M_test_6_io_seg;
        io_sel = M_test_6_io_sel;
        opcode_led = M_test_6_opcode_led;
        M_test_6_start = 1'h1;
        if (M_test_6_done == 1'h1) begin
          M_autostate_d = TEST_7_autostate;
        end
      end
      TEST_7_autostate: begin
        io_seg = M_test_7_io_seg;
        io_sel = M_test_7_io_sel;
        opcode_led = M_test_7_opcode_led;
        M_test_7_start = 1'h1;
        if (M_test_7_done) begin
          M_autostate_d = TEST_8_autostate;
        end
      end
      TEST_8_autostate: begin
        io_seg = M_test_8_io_seg;
        io_sel = M_test_8_io_sel;
        opcode_led = M_test_8_opcode_led;
        M_test_8_start = 1'h1;
        if (M_test_8_done == 1'h1) begin
          M_autostate_d = TEST_9_autostate;
        end
      end
      TEST_9_autostate: begin
        io_seg = M_test_9_io_seg;
        io_sel = M_test_9_io_sel;
        opcode_led = M_test_9_opcode_led;
        M_test_9_start = 1'h1;
        if (M_test_9_done == 1'h1) begin
          M_autostate_d = TEST_10_autostate;
        end
      end
      TEST_10_autostate: begin
        io_seg = M_test_10_io_seg;
        io_sel = M_test_10_io_sel;
        opcode_led = M_test_10_opcode_led;
        M_test_10_start = 1'h1;
        if (M_test_10_done == 1'h1) begin
          M_autostate_d = TEST_11_autostate;
        end
      end
      TEST_11_autostate: begin
        io_seg = M_test_11_io_seg;
        io_sel = M_test_11_io_sel;
        opcode_led = M_test_11_opcode_led;
        M_test_11_start = 1'h1;
        if (M_test_11_done == 1'h1) begin
          M_autostate_d = TEST_12_autostate;
        end
      end
      TEST_12_autostate: begin
        io_seg = M_test_12_io_seg;
        io_sel = M_test_12_io_sel;
        opcode_led = M_test_12_opcode_led;
        M_test_12_start = 1'h1;
        if (M_test_12_done == 1'h1) begin
          M_autostate_d = TEST_13_autostate;
        end
      end
      TEST_13_autostate: begin
        io_seg = M_test_13_io_seg;
        io_sel = M_test_13_io_sel;
        opcode_led = M_test_13_opcode_led;
        M_test_13_start = 1'h1;
        if (M_test_13_done == 1'h1) begin
          M_autostate_d = TEST_14_autostate;
        end
      end
      TEST_14_autostate: begin
        io_seg = M_test_14_io_seg;
        io_sel = M_test_14_io_sel;
        opcode_led = M_test_14_opcode_led;
        M_test_14_start = 1'h1;
        if (M_test_14_done == 1'h1) begin
          M_autostate_d = TEST_15_autostate;
        end
      end
      TEST_15_autostate: begin
        io_seg = M_test_15_io_seg;
        io_sel = M_test_15_io_sel;
        opcode_led = M_test_15_opcode_led;
        M_test_15_start = 1'h1;
        if (M_test_15_done == 1'h1) begin
          M_autostate_d = TEST_16_autostate;
        end
      end
      TEST_16_autostate: begin
        io_seg = M_test_16_io_seg;
        io_sel = M_test_16_io_sel;
        opcode_led = M_test_16_opcode_led;
        M_test_16_start = 1'h1;
        if (M_test_16_done == 1'h1) begin
          M_autostate_d = TEST_17_autostate;
        end
      end
      TEST_17_autostate: begin
        io_seg = M_test_17_io_seg;
        io_sel = M_test_17_io_sel;
        opcode_led = M_test_17_opcode_led;
        M_test_17_start = 1'h1;
        if (M_test_17_done == 1'h1) begin
          M_autostate_d = TEST_18_autostate;
        end
      end
      TEST_18_autostate: begin
        io_seg = M_test_18_io_seg;
        io_sel = M_test_18_io_sel;
        opcode_led = M_test_18_opcode_led;
        M_test_18_start = 1'h1;
        if (M_test_18_done == 1'h1) begin
          M_autostate_d = TEST_19_autostate;
        end
      end
      TEST_19_autostate: begin
        io_seg = M_test_19_io_seg;
        io_sel = M_test_19_io_sel;
        opcode_led = M_test_19_opcode_led;
        M_test_19_start = 1'h1;
        if (M_test_19_done == 1'h1) begin
          M_autostate_d = TEST_20_autostate;
        end
      end
      TEST_20_autostate: begin
        io_seg = M_test_20_io_seg;
        io_sel = M_test_20_io_sel;
        opcode_led = M_test_20_opcode_led;
        M_test_20_start = 1'h1;
        if (M_test_20_done == 1'h1) begin
          M_autostate_d = TEST_21_autostate;
        end
      end
      TEST_21_autostate: begin
        io_seg = M_test_21_io_seg;
        io_sel = M_test_21_io_sel;
        opcode_led = M_test_21_opcode_led;
        M_test_21_start = 1'h1;
        if (M_test_21_done == 1'h1) begin
          M_autostate_d = TEST_22_autostate;
        end
      end
      TEST_22_autostate: begin
        io_seg = M_test_22_io_seg;
        io_sel = M_test_22_io_sel;
        opcode_led = M_test_22_opcode_led;
        M_test_22_start = 1'h1;
        if (M_test_22_done == 1'h1) begin
          M_autostate_d = TEST_23_autostate;
        end
      end
      TEST_23_autostate: begin
        io_seg = M_test_23_io_seg;
        io_sel = M_test_23_io_sel;
        opcode_led = M_test_23_opcode_led;
        M_test_23_start = 1'h1;
        if (M_test_23_done == 1'h1) begin
          M_autostate_d = TEST_24_autostate;
        end
      end
      TEST_24_autostate: begin
        io_seg = M_test_24_io_seg;
        io_sel = M_test_24_io_sel;
        opcode_led = M_test_24_opcode_led;
        M_test_24_start = 1'h1;
        if (M_test_24_done == 1'h1) begin
          M_autostate_d = TEST_25_autostate;
        end
      end
      TEST_25_autostate: begin
        io_seg = M_test_25_io_seg;
        io_sel = M_test_25_io_sel;
        opcode_led = M_test_25_opcode_led;
        M_test_25_start = 1'h1;
        if (M_test_25_done == 1'h1) begin
          M_autostate_d = TEST_26_autostate;
        end
      end
      TEST_26_autostate: begin
        io_seg = M_test_26_io_seg;
        io_sel = M_test_26_io_sel;
        opcode_led = M_test_26_opcode_led;
        M_test_26_start = 1'h1;
        if (M_test_26_done == 1'h1) begin
          M_autostate_d = TEST_27_autostate;
        end
      end
      TEST_27_autostate: begin
        io_seg = M_test_27_io_seg;
        io_sel = M_test_27_io_sel;
        opcode_led = M_test_27_opcode_led;
        M_test_27_start = 1'h1;
        if (M_test_27_done == 1'h1) begin
          M_autostate_d = TEST_28_autostate;
        end
      end
      TEST_28_autostate: begin
        io_seg = M_test_28_io_seg;
        io_sel = M_test_28_io_sel;
        opcode_led = M_test_28_opcode_led;
        M_test_28_start = 1'h1;
        if (M_test_28_done == 1'h1) begin
          M_autostate_d = TEST_29_autostate;
        end
      end
      TEST_29_autostate: begin
        io_seg = M_test_29_io_seg;
        io_sel = M_test_29_io_sel;
        opcode_led = M_test_29_opcode_led;
        M_test_29_start = 1'h1;
        if (M_test_29_done == 1'h1) begin
          M_autostate_d = TEST_30_autostate;
        end
      end
      TEST_30_autostate: begin
        io_seg = M_test_30_io_seg;
        io_sel = M_test_30_io_sel;
        opcode_led = M_test_30_opcode_led;
        M_test_30_start = 1'h1;
        if (M_test_30_done == 1'h1) begin
          M_autostate_d = TEST_31_autostate;
        end
      end
      TEST_31_autostate: begin
        io_seg = M_test_31_io_seg;
        io_sel = M_test_31_io_sel;
        opcode_led = M_test_31_opcode_led;
        M_test_31_start = 1'h1;
        if (M_test_31_done == 1'h1) begin
          M_autostate_d = TEST_32_autostate;
        end
      end
      TEST_32_autostate: begin
        io_seg = M_test_32_io_seg;
        io_sel = M_test_32_io_sel;
        opcode_led = M_test_32_opcode_led;
        M_test_32_start = 1'h1;
        if (M_test_32_done == 1'h1) begin
          M_autostate_d = TEST_33_autostate;
        end
      end
      TEST_33_autostate: begin
        io_seg = M_test_33_io_seg;
        io_sel = M_test_33_io_sel;
        opcode_led = M_test_33_opcode_led;
        M_test_33_start = 1'h1;
        if (M_test_33_done == 1'h1) begin
          M_autostate_d = STANDBY_autostate;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_autostate_q <= 1'h0;
    end else begin
      M_autostate_q <= M_autostate_d;
    end
  end
  
endmodule
