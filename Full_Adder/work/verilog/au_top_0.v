/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    output reg [2:0] customout,
    input [1:0] customin
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_fa_s;
  wire [1-1:0] M_fa_cout;
  reg [1-1:0] M_fa_x;
  reg [1-1:0] M_fa_y;
  reg [1-1:0] M_fa_cin;
  full_adder_1 fa (
    .x(M_fa_x),
    .y(M_fa_y),
    .cin(M_fa_cin),
    .s(M_fa_s),
    .cout(M_fa_cout)
  );
  
  wire [1-1:0] M_chk_out;
  reg [1-1:0] M_chk_sum1;
  reg [1-1:0] M_chk_cout1;
  reg [1-1:0] M_chk_sum2;
  reg [1-1:0] M_chk_cout2;
  checker_2 chk (
    .sum1(M_chk_sum1),
    .cout1(M_chk_cout1),
    .sum2(M_chk_sum2),
    .cout2(M_chk_cout2),
    .out(M_chk_out)
  );
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_3 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [(1'h1+0)-1:0] M_buttondetector_out;
  reg [(1'h1+0)-1:0] M_buttondetector_in;
  
  genvar GEN_buttondetector0;
  generate
  for (GEN_buttondetector0=0;GEN_buttondetector0<1'h1;GEN_buttondetector0=GEN_buttondetector0+1) begin: buttondetector_gen_0
    edge_detector_4 buttondetector (
      .clk(clk),
      .in(M_buttondetector_in[GEN_buttondetector0*(1)+(1)-1-:(1)]),
      .out(M_buttondetector_out[GEN_buttondetector0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [(1'h1+0)-1:0] M_buttoncond_out;
  reg [(1'h1+0)-1:0] M_buttoncond_in;
  
  genvar GEN_buttoncond0;
  generate
  for (GEN_buttoncond0=0;GEN_buttoncond0<1'h1;GEN_buttoncond0=GEN_buttoncond0+1) begin: buttoncond_gen_0
    button_conditioner_5 buttoncond (
      .clk(clk),
      .in(M_buttoncond_in[GEN_buttoncond0*(1)+(1)-1-:(1)]),
      .out(M_buttoncond_out[GEN_buttoncond0*(1)+(1)-1-:(1)])
    );
  end
  endgenerate
  wire [7-1:0] M_seg_seg;
  wire [1-1:0] M_seg_sel;
  reg [4-1:0] M_seg_values;
  multi_seven_seg_6 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  wire [4-1:0] M_dec_ctr_value;
  wire [1-1:0] M_dec_ctr_a;
  wire [1-1:0] M_dec_ctr_b;
  wire [1-1:0] M_dec_ctr_cout;
  reg [1-1:0] M_dec_ctr_inc;
  singlecounter_7 dec_ctr (
    .clk(clk),
    .rst(rst),
    .inc(M_dec_ctr_inc),
    .value(M_dec_ctr_value),
    .a(M_dec_ctr_a),
    .b(M_dec_ctr_b),
    .cout(M_dec_ctr_cout)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    io_seg = ~M_seg_seg;
    io_sel = ~M_seg_sel;
    led = 8'h00;
    io_led = 24'h000000;
    usb_tx = usb_rx;
    customout[0+0-:1] = M_dec_ctr_a;
    customout[1+0-:1] = M_dec_ctr_b;
    customout[2+0-:1] = M_dec_ctr_cout;
    M_chk_sum1 = customin[0+0-:1];
    M_chk_sum2 = M_fa_s;
    M_chk_cout1 = customin[1+0-:1];
    M_chk_cout2 = M_fa_cout;
    M_buttondetector_in = M_buttoncond_out;
    M_dec_ctr_inc = M_buttondetector_out;
    M_seg_values = M_dec_ctr_value;
    M_buttoncond_in = io_button[0+0-:1];
    M_buttoncond_in = io_button[1+0-:1];
    M_fa_x = M_dec_ctr_a;
    M_fa_y = M_dec_ctr_b;
    M_fa_cin = M_dec_ctr_cout;
    io_led[0+0+0-:1] = M_fa_s;
    io_led[0+1+0-:1] = M_fa_cout;
    io_led[16+0+0-:1] = M_chk_out;
    io_led[8+0+0-:1] = customin[0+0-:1];
    io_led[8+1+0-:1] = customin[1+0-:1];
  end
endmodule
