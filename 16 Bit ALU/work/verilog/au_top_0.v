/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    input usb_rx,
    output reg usb_tx,
    output reg [7:0] led,
    input [23:0] io_dip,
    input [4:0] io_button,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [23:0] io_led
  );
  
  
  
  reg rst;
  
  reg change_state;
  
  reg start_auto;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [1-1:0] M_button_cond_out;
  reg [1-1:0] M_button_cond_in;
  button_conditioner_2 button_cond (
    .clk(clk),
    .in(M_button_cond_in),
    .out(M_button_cond_out)
  );
  
  wire [1-1:0] M_detectPress_out;
  reg [1-1:0] M_detectPress_in;
  edge_detector_3 detectPress (
    .clk(clk),
    .in(M_detectPress_in),
    .out(M_detectPress_out)
  );
  
  
  localparam MANUAL_state = 1'd0;
  localparam AUTO_state = 1'd1;
  
  reg M_state_d, M_state_q = MANUAL_state;
  
  wire [8-1:0] M_manual_tester_io_seg;
  wire [4-1:0] M_manual_tester_io_sel;
  wire [24-1:0] M_manual_tester_io_led;
  reg [1-1:0] M_manual_tester_clk;
  reg [1-1:0] M_manual_tester_rst;
  reg [24-1:0] M_manual_tester_io_dip;
  reg [5-1:0] M_manual_tester_io_button;
  manual_alu_tester_4 manual_tester (
    .clk(M_manual_tester_clk),
    .rst(M_manual_tester_rst),
    .io_dip(M_manual_tester_io_dip),
    .io_button(M_manual_tester_io_button),
    .io_seg(M_manual_tester_io_seg),
    .io_sel(M_manual_tester_io_sel),
    .io_led(M_manual_tester_io_led)
  );
  
  wire [8-1:0] M_auto_tester_io_seg;
  wire [4-1:0] M_auto_tester_io_sel;
  wire [6-1:0] M_auto_tester_opcode_led;
  reg [1-1:0] M_auto_tester_clk;
  reg [1-1:0] M_auto_tester_rst;
  reg [1-1:0] M_auto_tester_start;
  auto_tester_run_5 auto_tester (
    .clk(M_auto_tester_clk),
    .rst(M_auto_tester_rst),
    .start(M_auto_tester_start),
    .io_seg(M_auto_tester_io_seg),
    .io_sel(M_auto_tester_io_sel),
    .opcode_led(M_auto_tester_opcode_led)
  );
  
  always @* begin
    M_state_d = M_state_q;
    
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    led = {3'h0, io_button};
    usb_tx = usb_rx;
    M_button_cond_in = io_button[1+0-:1];
    M_detectPress_in = M_button_cond_out;
    change_state = M_detectPress_out;
    start_auto = 1'h0;
    M_manual_tester_io_dip = io_dip;
    M_manual_tester_io_button = io_button;
    M_manual_tester_clk = clk;
    M_manual_tester_rst = rst;
    M_auto_tester_start = start_auto;
    M_auto_tester_clk = clk;
    M_auto_tester_rst = rst;
    io_led = 24'h000000;
    io_seg = M_manual_tester_io_seg;
    io_sel = M_manual_tester_io_sel;
    
    case (M_state_q)
      MANUAL_state: begin
        io_seg = M_manual_tester_io_seg;
        io_sel = M_manual_tester_io_sel;
        io_led = M_manual_tester_io_led;
        if (change_state) begin
          M_state_d = AUTO_state;
        end
      end
      AUTO_state: begin
        io_seg = M_auto_tester_io_seg;
        io_sel = M_auto_tester_io_sel;
        io_led[16+0+5-:6] = M_auto_tester_opcode_led;
        start_auto = 1'h1;
        if (change_state) begin
          M_state_d = MANUAL_state;
        end
      end
    endcase
    led = 8'bzzzzzzzz;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_state_q <= 1'h0;
    end else begin
      M_state_q <= M_state_d;
    end
  end
  
endmodule
