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

`timescale 1ps/1ps
module axi_tft_0_top_tb
();

reg        clk_in = 1'b0;
reg        reset;
wire [1:0] status;
wire       done;
wire       tft_resetn;
  
wire         tft_vga_clk;
wire  [7:0]  tft_vga_r;
wire  [7:0]  tft_vga_g;
wire  [7:0]  tft_vga_b;
 

always
begin
    clk_in = #2500 ~clk_in;
end

initial 
begin
    reset = 1'b1;
    #100
    reset = 1'b0;
end

axi_tft_0_top EXDES (
    .clk_in_p(clk_in),
    .clk_in_n(~clk_in),
    .reset(reset),
    .tft_hsync        (tft_hsync),  
    .tft_vsync        (tft_vsync),  
    .tft_de           (tft_de   ),  
    .tft_dps          (tft_dps  ),  
    .tft_resetn       (tft_resetn),  
  
    .tft_vga_clk      (tft_vga_clk),  
    .tft_vga_r        (tft_vga_r  ),  
    .tft_vga_g        (tft_vga_g  ),  
    .tft_vga_b        (tft_vga_b  )
  );
 



axi_tft_0_tft_checker TFT_CHECKER
(
    .axi_reset      (tft_resetn),
    .tft_h_sync     (tft_hsync),
    .tft_v_sync     (tft_vsync),
    .tft_dps        (tft_dps),
    .tft_de         (tft_de),
  
    .vga_clk        (tft_vga_clk),
    .vga_red        (tft_vga_r),
    .vga_green      (tft_vga_g),
    .vga_blue       (tft_vga_b),
 
    .test_status    (status),
    .test_done      (done) 
);


always@(done or status)
begin
    if(done && status == 2'b00) begin
        $display("%t test completed successfully", $time);
        $display("***********************************************************************************");
        $display("*************************** INFO:TEST PASSED **************************************");
        $display("***********************************************************************************");
        #100000 $finish;
    end else begin
        if(done && status[0] == 1'b1) begin
            $display("*************************************************************************************");
            $display("*************** ERROR:TEST FAILED ***************************************************");
            $display("*********** HSYNC/VSYNC TIMING FAILED ***********************************************");
            $display("*************************************************************************************");
            #100000 $finish;
        end 
        if(done && status[1] == 2'b01) begin
            $display("*************************************************************************************");
            $display("************************ ERROR:TEST FAILED ******************************************");
            $display("************************* DATA MISS MATCH  ******************************************");
            $display("*************************************************************************************");
            #100000 $finish;
        end
    end
end

endmodule
