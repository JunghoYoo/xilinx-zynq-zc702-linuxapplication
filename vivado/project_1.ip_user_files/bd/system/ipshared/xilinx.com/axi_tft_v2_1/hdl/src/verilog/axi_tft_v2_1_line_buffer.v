// --------------------------------------------------------------------
// -- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.	 --
// --		                                						 --
// -- This file contains confidential and proprietary information	 --
// -- of Xilinx, Inc. and is protected under U.S. and	        	 --
// -- international copyright and other intellectual property    	 --
// -- laws.							                                 --
// --								                                 --
// -- DISCLAIMER							                         --
// -- This disclaimer is not a license and does not grant any	     --
// -- rights to the materials distributed herewith. Except as	     --
// -- otherwise provided in a valid license issued to you by	     --
// -- Xilinx, and to the maximum extent permitted by applicable	     --
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND	     --
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES	 --
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING	     --
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-	     --
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and	     --
// -- (2) Xilinx shall not be liable (whether in contract or tort,	 --
// -- including negligence, or under any other theory of		     --
// -- liability) for any loss or damage of any kind or nature	     --
// -- related to, arising under or in connection with these	         --
// -- materials, including for any direct, or any indirect,	         --
// -- special, incidental, or consequential loss or damage		     --
// -- (including loss of data, profits, goodwill, or any type of	 --
// -- loss or damage suffered as a result of any action brought	     --
// -- by a third party) even if such damage or loss was		         --
// -- reasonably foreseeable or Xilinx had been advised of the	     --
// -- possibility of the same.					                     --
// --								                                 --
// -- CRITICAL APPLICATIONS					                         --
// -- Xilinx products are not designed or intended to be fail-	     --
// -- safe, or for use in any application requiring fail-safe	     --
// -- performance, such as life-support or safety devices or	     --
// -- systems, Class III medical devices, nuclear facilities,	     --
// -- applications related to the deployment of airbags, or any	     --
// -- other applications that could lead to death, personal	         --
// -- injury, or severe property or environmental damage		     --
// -- (individually and collectively, "Critical			             --
// -- Applications"). Customer assumes the sole risk and		     --
// -- liability of any use of Xilinx products in Critical		     --
// -- Applications, subject only to applicable laws and	  	         --
// -- regulations governing limitations on product liability.	     --
// --								                                 --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS	     --
// -- PART OF THIS FILE AT ALL TIMES. 				                 --
// --------------------------------------------------------------------
//-----------------------------------------------------------------------------
// axi_tft_v2_1_10_line_buffer.v  
//-----------------------------------------------------------------------------
// Filename:        axi_tft_v2_1_10_line_buffer.v
// Version:         v1.00.a
// Description:     
//
//    -- This module contains 1 RAMB16_S18_S36 for line storage.
//    -- The RGB BRAMs hold one line of the 480 lines required for 800x480
//       resolution.
//    -- Data is written to the PORT B of the BRAM by the AXI bus.
//    -- Data is read from the  PORT A of the BRAM by the TFT 
//
//                                   
// Verilog-Standard: Verilog'2001
//-----------------------------------------------------------------------------
// Structure:   
//                  axi_tft.vhd
//                     -- axi_master_burst.vhd               
//                     -- axi_lite_ipif.vhd
//                     -- tft_controller.v
//                            -- line_buffer.v
//                            -- v_sync.v
//                            -- h_sync.v
//                            -- slave_register.v
//                            -- tft_interface.v
//                                -- iic_init.v
//-----------------------------------------------------------------------------
// Author:          PVK
// History:
//   PVK          06/10/08    First Version
// ^^^^^^
//        
//  TFT READ LOGIC    
//    -- BRAM_TFT_rd is generated two clock cycles early wrt DE      
//    -- BRAM_TFT_oe is generated one clock cycles early wrt DE
//    -- These two signals control the TFT side read from BRAM to HW
//  AXI WRITE LOGIC
//    -- BRAM Write Enables and Data are controlled by the tft_controller.v
//    -- module.  
// ~~~~~~~~
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x" 
//      reset signals:                          "rst", "rst_n" 
//      parameters:                             "C_*" 
//      user defined types:                     "*_TYPE" 
//      state machine next state:               "*_ns" 
//      state machine current state:            "*_cs" 
//      combinatorial signals:                  "*_com" 
//      pipelined or register delay signals:    "*_d#" 
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce" 
//      internal version of output port         "*_i"
//      device pins:                            "*_pin" 
//      ports:                                  - Names begin with Uppercase 
//      component instantiations:               "<MODULE>I_<#|FUNC>
//-----------------------------------------------------------------------------


///////////////////////////////////////////////////////////////////////////////
// Module Declaration
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ps / 1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_tft_v2_1_10_line_buffer
    #( parameter C_FAMILY = "Viretex7"
    )
    (


  // BRAM_TFT READ PORT A clock and reset
  TFT_Clk,           // TFT Clock 
  TFT_Rst,           // TFT Reset

  // AXI_BRAM WRITE PORT B clock and reset
  AXI_Clk,           // AXI Clock
  AXI_Rst,           // AXI Reset

  // BRAM_TFT READ Control
  BRAM_TFT_rd,       // TFT BRAM read   
  BRAM_TFT_oe,       // TFT BRAM output enable  

  // AXI_BRAM Write Control
  AXI_BRAM_data,     // AXI BRAM Data
  AXI_BRAM_we,       // AXI BRAM write enable

  // RGB Outputs
  RED,               // TFT Red pixel data  
  GREEN,             // TFT Green pixel data  
  BLUE               // TFT Blue pixel data  
);
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////

  input        TFT_Clk;
  input        TFT_Rst;
  input        AXI_Clk;
  input        AXI_Rst;
  input        BRAM_TFT_rd;
  input        BRAM_TFT_oe;
  input [0:63] AXI_BRAM_data;
  input        AXI_BRAM_we;
  output [7:0] RED,GREEN,BLUE;

///////////////////////////////////////////////////////////////////////////////
// Signal Declaration
///////////////////////////////////////////////////////////////////////////////
  
  reg [7:0]  BRAM_TFT_R_data;
  reg [7:0]  BRAM_TFT_G_data;
  reg [7:0]  BRAM_TFT_B_data;  
  reg  [0:9]  BRAM_TFT_addr;
  reg  [0:8]  BRAAXI_addr;
  wire [47:0] fifo_out_data;
  reg         tc;
  reg  [7:0]  RED,GREEN,BLUE;

///////////////////////////////////////////////////////////////////////////////
// READ Logic BRAM Address Generator TFT Side
///////////////////////////////////////////////////////////////////////////////

  // BRAM_TFT_addr Counter (0-799d)
  always @(posedge TFT_Clk)
  begin : TFT_ADDR_CNTR
    if (TFT_Rst | ~BRAM_TFT_rd) 
      begin
        BRAM_TFT_addr <= 10'b0;
        tc <= 1'b0;
      end
    else 
      begin
        if (tc == 0) 
          begin
            if (BRAM_TFT_addr == 10'd799) 
              begin
                BRAM_TFT_addr <= 10'b0;
                tc <= 1'b1;
              end
            else 
              begin
                BRAM_TFT_addr <= BRAM_TFT_addr + 1;
                tc <= 1'b0;
              end
          end
      end
  end

///////////////////////////////////////////////////////////////////////////////
// WRITE Logic for the BRAM AXI Side
///////////////////////////////////////////////////////////////////////////////

  // BRAAXI_addr Counter (0-399d)
  always @(posedge AXI_Clk)
  begin : AXI_ADDR_CNTR
    if (AXI_Rst) 
      begin
        BRAAXI_addr <= 9'b0;
      end
    else 
      begin
        if (AXI_BRAM_we) 
          begin
            if (BRAAXI_addr == 9'd399) 
              begin
                BRAAXI_addr <= 9'b0;
              end
            else 
              begin
                BRAAXI_addr <= BRAAXI_addr + 1;
              end
          end
      end
  end

///////////////////////////////////////////////////////////////////////////////
// BRAM
///////////////////////////////////////////////////////////////////////////////

 async_fifo_fg 
  #(
        .C_ALLOW_2N_DEPTH   (1),// : Integer := 0;  -- New paramter to leverage FIFO Gen 2**N depth
        .C_FAMILY           (C_FAMILY),// : String  := "virtex5";  -- new for FIFO Gen
        .C_DATA_WIDTH       (48),// : integer := 16;
        .C_ENABLE_RLOCS     (0),// : integer := 0 ;  -- not supported in FG
        .C_FIFO_DEPTH       (512),// : integer := 15;
        .C_HAS_ALMOST_EMPTY (1),// : integer := 1 ;
        .C_HAS_ALMOST_FULL  (1),// : integer := 1 ;
        .C_HAS_RD_ACK       (1),// : integer := 0 ;
        .C_HAS_RD_COUNT     (1),// : integer := 1 ;
        .C_HAS_RD_ERR       (1),// : integer := 0 ;
        .C_HAS_WR_ACK       (1),// : integer := 0 ;
        .C_HAS_WR_COUNT     (1),// : integer := 1 ;
        .C_HAS_WR_ERR       (1),// : integer := 0 ;
        .C_RD_ACK_LOW       (0),// : integer := 0 ;
        .C_RD_COUNT_WIDTH   (9),// : integer := 3 ;
        .C_RD_ERR_LOW       (0),// : integer := 0 ;
        .C_USE_EMBEDDED_REG (0),// : integer := 0 ;  -- Valid only for BRAM based FIFO, otherwise needs to be set to 0
        .C_PRELOAD_REGS     (1),// : integer := 0 ;   
        .C_PRELOAD_LATENCY  (0),// : integer := 1 ;  -- needs to be set 2 when C_USE_EMBEDDED_REG = 1 
        .C_USE_BLOCKMEM     (1),// : integer := 1 ;  -- 0 = distributed RAM, 1 = BRAM
        .C_WR_ACK_LOW       (0),// : integer := 0 ;
        .C_WR_COUNT_WIDTH   (9),// : integer := 3 ;
        .C_WR_ERR_LOW       (0) // : integer := 0   
    )
    RAM (
        .Din            ({AXI_BRAM_data[40:47], AXI_BRAM_data[48:55], AXI_BRAM_data[56:63],     //AXI_BRAM_data), //: in std_logic_vector(C_DATA_WIDTH-1 downto 0) := (others => '0');
                          AXI_BRAM_data[8:15],  AXI_BRAM_data[16:23], AXI_BRAM_data[24:31]}),
        .Wr_en          (AXI_BRAM_we), //: in std_logic := '1';
        .Wr_clk         (AXI_Clk), //: in std_logic := '1';
        .Rd_en          (BRAM_TFT_addr[9]), //: in std_logic := '0';
        .Rd_clk         (TFT_Clk), //: in std_logic := '1';
        .Ainit          (TFT_Rst ), //: in std_logic := '1';   
        .Dout           (fifo_out_data), //: out std_logic_vector(C_DATA_WIDTH-1 downto 0);
        .Full           (), //: out std_logic; 
        .Empty          (), //: out std_logic; 
        .Almost_full    (), //: out std_logic;  
        .Almost_empty   (), //: out std_logic;  
        .Wr_count       (), //: out std_logic_vector(C_WR_COUNT_WIDTH-1 downto 0);
        .Rd_count       (), //: out std_logic_vector(C_RD_COUNT_WIDTH-1 downto 0);
        .Rd_ack         (), //: out std_logic;
        .Rd_err         (), //: out std_logic;
        .Wr_ack         (), //: out std_logic;
        .Wr_err         () //: out std_logic
    );


  always @(posedge TFT_Clk)
  begin
      if(TFT_Rst) begin
          BRAM_TFT_R_data <= 8'd0;
          BRAM_TFT_G_data <= 8'd0;
          BRAM_TFT_B_data <= 8'd0;
      end else begin
        if(BRAM_TFT_addr[9]) begin
            BRAM_TFT_R_data <= fifo_out_data[47:40];  //40:47];
            BRAM_TFT_G_data <= fifo_out_data[39:32];  //48:55];
            BRAM_TFT_B_data <= fifo_out_data[31:24];  //56:63];
        end else begin
            BRAM_TFT_R_data <= fifo_out_data[23:16];  //8:15]; 
            BRAM_TFT_G_data <= fifo_out_data[15:8];   //16:23];
            BRAM_TFT_B_data <= fifo_out_data[7:0];    //24:31];
        end
     end
  end
///////////////////////////////////////////////////////////////////////////////
// Register RGB BRAM output data
///////////////////////////////////////////////////////////////////////////////
  always @(posedge TFT_Clk)
  begin : BRAM_OUT_DATA 
    if (TFT_Rst | ~BRAM_TFT_oe)
      begin
        RED   <= 8'b0;
        GREEN <= 8'b0;
        BLUE  <= 8'b0; 
      end
    else
      begin
        RED   <= BRAM_TFT_R_data;
        GREEN <= BRAM_TFT_G_data;
        BLUE  <= BRAM_TFT_B_data;
      end
   end   
   

endmodule

