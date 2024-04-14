/*
 * Copyright (c) 2024 Beau Ambur, DEFAULT
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_nubcore_default_tape (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  wire [6:0] led_out;
  assign uo_out[6:0] = led_out;
  assign uo_out[7] = 1'b0;
  assign uio_out = 0;
  assign uio_oe  = 0;

  led_out = 7'b0111111;
