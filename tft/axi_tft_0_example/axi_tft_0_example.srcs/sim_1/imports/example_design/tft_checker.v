// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
`timescale 1 ps / 1 ps
module axi_tft_0_tft_checker
(
    input             axi_reset,
    input             tft_h_sync,
    input             tft_v_sync,
    input             tft_dps,
    input             tft_de,
 
    input             vga_clk,
    input      [7:0]  vga_red,
    input      [7:0]  vga_green,
    input      [7:0]  vga_blue,
    output reg [1:0]  test_status,
    output reg        test_done
);

    reg [7:0] count;
    reg [6:0] h_sync_count;
    reg [1:0] v_sync_count;
    reg [7:0] de_count;
    reg       tft_h_sync_r1;
    reg       tft_v_sync_r1;
    reg       tft_de_r1;
    reg [4:0] vs_bp_cnt;
    reg [6:0] de_bp_cnt;
    reg       en_vs_bp_cnt;
    reg       en_de_bp_cnt;
    reg       vs_pw_error;
    wire      tft_clk;


 
    assign #1 tft_clk = vga_clk;


always @(posedge tft_clk or negedge axi_reset) 
begin
    if(~axi_reset) begin
        h_sync_count <= 7'd0;
        v_sync_count <= 2'b00;
        de_count <= 8'h00;
        count <= 8'h00;
        test_status  <= 2'b00;
        tft_h_sync_r1 <= 1'b1;
        tft_v_sync_r1 <= 1'b1;
        tft_de_r1 <= 1'b0;
        test_done <= 1'b0;
        vs_bp_cnt <= 5'h00;
        de_bp_cnt <= 6'h00;
        en_vs_bp_cnt <= 1'b0;
        en_de_bp_cnt <= 1'b0;
        vs_pw_error <= 1'b0;
    end else begin
        tft_h_sync_r1 <= tft_h_sync;
        tft_v_sync_r1 <= tft_v_sync;
        tft_de_r1 <= tft_de;
        if(!test_done) begin
            if(!tft_h_sync_r1 && tft_h_sync) begin
                en_de_bp_cnt <= 1'b1;
            end else if(tft_de || !tft_h_sync) begin
                en_de_bp_cnt <= 1'b0;
            end 
            if(en_de_bp_cnt) begin
                de_bp_cnt <= de_bp_cnt + 6'h01;
            end else if(tft_de) begin
                de_bp_cnt <= de_bp_cnt;
            end else begin
                de_bp_cnt <= 6'h00;
            end 
        
            if(!tft_v_sync_r1 && tft_v_sync) begin
                en_vs_bp_cnt <= 1'b1;
            end else if(tft_de) begin
                en_vs_bp_cnt <= 1'b0;
            end 
            if(en_vs_bp_cnt && (!tft_h_sync && tft_h_sync_r1)) begin
                vs_bp_cnt <= vs_bp_cnt + 6'h01;
            end else if(tft_de) begin
                vs_bp_cnt <= vs_bp_cnt;
            end else if(!en_vs_bp_cnt) begin
                vs_bp_cnt <= 5'h00;
            end 

            if(!tft_h_sync) begin
                h_sync_count <= h_sync_count + 7'h01;
            end else begin
                h_sync_count <= 7'h00;
            end
            if(!tft_v_sync && (tft_h_sync && !tft_h_sync_r1)) begin
                v_sync_count <= v_sync_count + 2'b01;
            end else if(tft_v_sync && !tft_v_sync_r1) begin
                if(v_sync_count != 2'b10) begin
                    vs_pw_error <= 1'b1;
                end
                v_sync_count <= 10'd000;
            end
            if(tft_de) begin
                if(vga_red == count && vga_green == count && vga_blue == count) begin
                    count <= count + 8'h01;
                end else begin
                    test_status[1] <= 1'b1;
                    test_done <= 1'b1;
                end
            end else if(tft_de_r1 && !tft_de) begin
                test_done <= 1'b1;
            end
            if(tft_de_r1) begin
//                if(de_bp_cnt != 6'd48 || (vs_bp_cnt != 5'b11111) || vs_pw_error) begin // back porch 2.0.10
                if(de_bp_cnt != 7'd96 || (vs_bp_cnt != 5'b00111) || vs_pw_error) begin // back porch 2.1
                    test_status[0] <= 1'b1;
                end
            end
        end
    end
end

endmodule        
