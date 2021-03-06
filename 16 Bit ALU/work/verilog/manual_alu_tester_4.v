/*
   This file was generated automatically by Alchitry Labs version 1.2.0.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
module manual_alu_tester_4 (
=======
module manual_alu_tester_2 (
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
    input clk,
    input rst,
    input [23:0] io_dip,
    input [4:0] io_button,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [23:0] io_led
  );
  
  
  
  wire [1-1:0] M_button_cond_out;
  reg [1-1:0] M_button_cond_in;
  button_conditioner_3 button_cond (
    .clk(clk),
    .in(M_button_cond_in),
    .out(M_button_cond_out)
  );
  
  wire [1-1:0] M_detectPress_out;
  reg [1-1:0] M_detectPress_in;
<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
  edge_detector_3 detectPress (
=======
  edge_detector_4 detectPress (
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
    .clk(clk),
    .in(M_detectPress_in),
    .out(M_detectPress_out)
  );
  
  reg [15:0] M_a_d, M_a_q = 1'h0;
  
  reg [15:0] M_b_d, M_b_q = 1'h0;
  
  reg [15:0] M_out_d, M_out_q = 1'h0;
  
  reg [5:0] M_alufn_d, M_alufn_q = 1'h0;
  
  
  localparam A_state = 2'd0;
  localparam B_state = 2'd1;
  localparam OUTPUT_state = 2'd2;
  
  reg [1:0] M_state_d, M_state_q = A_state;
  
  reg change_state;
  
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  wire [16-1:0] M_alu_out;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  reg [6-1:0] M_alu_alufn;
<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
  alu_16_bit_7 alu (
=======
  alu_16_bit_5 alu (
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
    .a(M_alu_a),
    .b(M_alu_b),
    .alufn(M_alu_alufn),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n),
    .out(M_alu_out)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_a_d = M_a_q;
    M_b_d = M_b_q;
    M_alufn_d = M_alufn_q;
    M_out_d = M_out_q;
    
    M_alu_a = M_a_q;
    M_alu_b = M_b_q;
    M_alu_alufn = M_alufn_q;
    M_button_cond_in = io_button[4+0-:1];
    M_detectPress_in = M_button_cond_out;
    change_state = M_detectPress_out;
    io_sel = 4'he;
    io_seg = 8'h00;
    M_out_d = M_alu_out;
    M_alufn_d = io_dip[16+0+5-:6];
    io_led = 24'h000000;
    io_led[16+0+5-:6] = M_alufn_q;
    
    case (M_state_q)
      A_state: begin
        M_a_d = {io_dip[8+7-:8], io_dip[0+7-:8]};
        io_led[0+15-:16] = {M_a_q[8+7-:8], M_a_q[0+7-:8]};
        io_seg = 8'h88;
        if (change_state) begin
          M_state_d = B_state;
        end
      end
      B_state: begin
        M_b_d = {io_dip[8+7-:8], io_dip[0+7-:8]};
        io_led[0+15-:16] = {M_b_q[8+7-:8], M_b_q[0+7-:8]};
        io_seg = 8'h83;
        if (change_state) begin
          M_state_d = OUTPUT_state;
        end
      end
      OUTPUT_state: begin
        io_led[0+15-:16] = {M_out_q[8+7-:8], M_out_q[0+7-:8]};
        io_seg = 8'hc0;
        if (change_state) begin
          M_state_d = A_state;
        end
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
      M_alufn_q <= 1'h0;
    end else begin
      M_alufn_q <= M_alufn_d;
=======
      M_out_q <= 1'h0;
    end else begin
      M_out_q <= M_out_d;
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
      M_a_q <= 1'h0;
    end else begin
      M_a_q <= M_a_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_b_q <= 1'h0;
    end else begin
=======
      M_b_q <= 1'h0;
    end else begin
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
      M_b_q <= M_b_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
=======
      M_a_q <= 1'h0;
    end else begin
      M_a_q <= M_a_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
<<<<<<< HEAD:16 Bit ALU/work/verilog/manual_alu_tester_4.v
      M_out_q <= 1'h0;
    end else begin
      M_out_q <= M_out_d;
=======
      M_alufn_q <= 1'h0;
    end else begin
      M_alufn_q <= M_alufn_d;
>>>>>>> parent of 6052a66... Added Auto Tester Files and flashed FPGA:16 Bit ALU/work/vivado/16 Bit ALU/16 Bit ALU.srcs/sources_1/imports/verilog/manual_alu_tester_2.v
    end
  end
  
endmodule
