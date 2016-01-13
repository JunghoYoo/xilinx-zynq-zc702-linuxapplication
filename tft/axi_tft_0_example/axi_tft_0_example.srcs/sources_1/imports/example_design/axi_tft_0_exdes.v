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
module axi_tft_0_top
(
    input        clk_in_p,
    input        clk_in_n,
    input        reset, 
    output       tft_hsync,  
    output       tft_vsync,  
    output       tft_de,  
    output       tft_dps,  
    output reg   tft_resetn,  
  
    output        tft_vga_clk,  
    output  [7:0] tft_vga_r,  
    output  [7:0] tft_vga_g,  
    output  [7:0] tft_vga_b
 
);
wire [3:0] Z = 4'b0000;

    localparam DATA_WIDTH = 64;

    wire             clk_100m;
    wire             clk_25m;
    wire             s_axi_aclk;    
    wire             s_axi_aresetn ; 
    wire             s_axi_arready ;    
    wire             s_axi_arvalid ;    
    wire  [32-1:0]   s_axi_araddr  ;    
    wire  [7:0]      s_axi_arlen   ;    
    wire  [2:0]      s_axi_arsize  ;    
    wire  [1:0]      s_axi_arburst ;    
    wire  [2:0]      s_axi_arprot  ;    
    wire  [3:0]      s_axi_arcache ;    
    wire             s_axi_rready  ;    
    wire             s_axi_rvalid  ;    
    wire  [DATA_WIDTH-1:0]       s_axi_rdata   ;    
    wire  [1:0]      s_axi_rresp   ;    
    wire             s_axi_rlast   ;    

    wire             mmcm_locked;
    reg              axi_resetn_r0;
    reg              axi_resetn_r1;
    reg              axi_resetn_r2;
    reg              axi_resetn_r3;
    reg              axi_resetn;
    reg              tft_resetn_r0;
    reg              tft_resetn_r1;


always@(posedge clk_100m)
begin
    if(~mmcm_locked) begin
        axi_resetn_r0 <= 1'b0;
        axi_resetn_r1 <= 1'b0;
        axi_resetn_r2 <= 1'b0;
        axi_resetn_r3 <= 1'b0;
        axi_resetn <= 1'b0;
    end else begin
        axi_resetn_r0 <= 1'b1;
        axi_resetn_r1 <= axi_resetn_r0;
        axi_resetn_r2 <= axi_resetn_r1;
        axi_resetn_r3 <= axi_resetn_r2;
        axi_resetn <= axi_resetn_r3;
    end
end

always@(posedge clk_25m)
begin
    if(~mmcm_locked) begin
        tft_resetn_r0 <= 1'b0;
        tft_resetn_r1 <= 1'b0;
        tft_resetn <= 1'b0;
    end else begin
        tft_resetn_r0 <= axi_resetn;
        tft_resetn_r1 <= tft_resetn_r0;
        tft_resetn <= tft_resetn_r1;
    end
end

axi_tft_0_clk_gen CLK_GEN
 (
  .clk_in1_p    (clk_in_p),
  .clk_in1_n    (clk_in_n),
  .clk_out1     (clk_100m),
  .clk_out2     (clk_25m ),
  .reset        (reset   ),
  .locked       (mmcm_locked)
 );

axi_tft_0_axi_slave_intf
    #( .DATA_WIDTH (DATA_WIDTH))
    axi_intf (
    .s_axi_aclk    (clk_100m),    
    .s_axi_aresetn (axi_resetn), 
    .s_axi_arready (s_axi_arready ),    
    .s_axi_arvalid (s_axi_arvalid ),    
    .s_axi_araddr  (s_axi_araddr  ),    
    .s_axi_arlen   (s_axi_arlen   ),    
    .s_axi_arsize  (s_axi_arsize  ),    
    .s_axi_arburst (s_axi_arburst ),    
    .s_axi_arprot  (s_axi_arprot  ),    
    .s_axi_arcache (s_axi_arcache ),    
    .s_axi_rready  (s_axi_rready  ),    
    .s_axi_rvalid  (s_axi_rvalid  ),    
    .s_axi_rdata   (s_axi_rdata   ),    
    .s_axi_rresp   (s_axi_rresp   ),    
    .s_axi_rlast   (s_axi_rlast   )    
);

axi_tft_0
    DUT (
    .s_axi_aclk       (clk_100m),    
    .s_axi_aresetn    (axi_resetn),    
    .m_axi_aclk       (clk_100m),    
    .m_axi_aresetn    (axi_resetn),    
    .md_error         (),    
    .ip2intc_irpt     (irpt),    
    .m_axi_arready    (s_axi_arready),    
    .m_axi_arvalid    (s_axi_arvalid),    
    .m_axi_araddr     (s_axi_araddr ),    
    .m_axi_arlen      (s_axi_arlen  ),    
    .m_axi_arsize     (s_axi_arsize ),    
    .m_axi_arburst    (s_axi_arburst),    
    .m_axi_arprot     (s_axi_arprot ),    
    .m_axi_arcache    (s_axi_arcache),    
    .m_axi_rready     (s_axi_rready ),    
    .m_axi_rvalid     (s_axi_rvalid ),    
    .m_axi_rdata      (s_axi_rdata  ),    
    .m_axi_rresp      (s_axi_rresp  ),    
    .m_axi_rlast      (s_axi_rlast  ),    
    .m_axi_awready    (1'b0),    
    .m_axi_awvalid    (),    
    .m_axi_awaddr     (),    
    .m_axi_awlen      (),    
    .m_axi_awsize     (),    
    .m_axi_awburst    (),    
    .m_axi_awprot     (),    
    .m_axi_awcache    (),    
    .m_axi_wready     (1'b0),    
    .m_axi_wvalid     (),    
    .m_axi_wdata      (),    
    .m_axi_wstrb      (),    
    .m_axi_wlast      (),    
    .m_axi_bready     (),    
    .m_axi_bvalid     (1'b0),    
    .m_axi_bresp      (2'b00),    
    .s_axi_awaddr     (Z),  
    .s_axi_awvalid    (1'b0),  
    .s_axi_awready    (),  
    .s_axi_wdata      (32'd0),  
    .s_axi_wstrb      (4'b0000),  
    .s_axi_wvalid     (1'b0),  
    .s_axi_wready     (),  
    .s_axi_bresp      (),  
    .s_axi_bvalid     (),  
    .s_axi_bready     (1'b1),  
    .s_axi_araddr     (Z),  
    .s_axi_arvalid    (1'b0),  
    .s_axi_arready    (),  
    .s_axi_rdata      (),  
    .s_axi_rresp      (),  
    .s_axi_rvalid     (),  
    .s_axi_rready     (1'b0),  
    .sys_tft_clk      (clk_25m),  
    .tft_hsync        (tft_hsync),  
    .tft_vsync        (tft_vsync),  
    .tft_de           (tft_de   ),  
    .tft_dps          (tft_dps  ),  
  
    .tft_vga_clk      (tft_vga_clk),  
    .tft_vga_r        (tft_vga_r  ),  
    .tft_vga_g        (tft_vga_g  ),  
    .tft_vga_b        (tft_vga_b  )
  );


// assign tft_vga_clk = ~clk_25m;
 

endmodule




