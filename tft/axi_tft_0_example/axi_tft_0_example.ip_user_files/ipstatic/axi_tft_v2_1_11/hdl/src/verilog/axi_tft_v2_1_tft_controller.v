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
// axi_tft_v2_1_tft_controller.v   
//-----------------------------------------------------------------------------
// Filename:        axi_tft_v2_1_tft_controller.vhd
// Version:         v1.00.a
// Description:     This is top level file for TFT controller. 
//                  This module generate the read request to the Video memory.
//                  It also generates the write request on the line buffer to
//                  store video data line.
//
// Verilog-Standard:   Verilog'2001
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
//   PVK           06/10/08    First Version
// ^^^^^^
//  PVK             09/15/09    v2.01.a
// ^^^^^^^
//  Reverted back the changes made for S6 DVI mode. Added flexibilty for 
//  Chrontel Chip configuration through register interface.
// ~~~~~~~~~
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
module axi_tft_v2_1_tft_controller(
                                            
  // TFT Interface  
  SYS_TFT_Clk,                // TFT Input Clock
  TFT_HSYNC,                  // TFT Horizontal Sync    
  TFT_VSYNC,                  // TFT Vertical Sync
  TFT_DE,                     // TFT Data Enable
  TFT_DPS,                    // TFT Display scan 
  TFT_VGA_CLK,                // TFT VGA Clock
  TFT_VGA_R,                  // TFT VGA Red data 
  TFT_VGA_G,                  // TFT VGA Green data 
  TFT_VGA_B,                  // TFT VGA Blue data
  TFT_DVI_CLK_P,              // TFT DVI differential clock
  TFT_DVI_CLK_N,              // TFT DVI differential clock
  TFT_DVI_DATA,               // TFT DVI DATA

  //IIC Interface for Chrontel CH7301C
  TFT_IIC_SCL_I,              // I2C clock input 
  TFT_IIC_SCL_O,              // I2C clock output
  TFT_IIC_SCL_T,              // I2C clock control
  TFT_IIC_SDA_I,              // I2C data input
  TFT_IIC_SDA_O,              // I2C data output 
  TFT_IIC_SDA_T,              // I2C data control
  
  // Slave Interface
  S_AXI_Clk,                   // Slave Interface clock
  S_AXI_Rst,                   // Slave Interface reset
  Bus2IP_Data,                // Bus to IP data bus
  Bus2IP_RdCE,                // Bus to IP read chip enable
  Bus2IP_WrCE,                // Bus to IP write chip enable
  Bus2IP_BE,                  // Bus to IP byte enable     
  IP2Bus_Data,                // IP to Bus data bus
  IP2Bus_RdAck,               // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,               // IP to Bus write transfer acknowledgement
  IP2Bus_Error,               // IP to Bus error response

  // Interrupt
  IP2INTC_Irpt,               // Frame complete interrupt

  // Master Interface
  M_AXI_Clk,                   // Master Interface clock 
  M_AXI_Rst,                   // Master Interface reset
  IP2Bus_MstRd_Req,           // IP to Bus master read request
  IP2Bus_Mst_Addr,            // IP to Bus master address bus
  IP2Bus_Mst_BE,              // IP to Bus master byte enables
  IP2Bus_Mst_Length,          // IP to Bus master transfer length
  IP2Bus_Mst_Type,            // IP to Bus master transfer type
  IP2Bus_Mst_Lock,            // IP to Bus master lock
  IP2Bus_Mst_Reset,           // IP to Bus master reset
  Bus2IP_Mst_CmdAck,          // Bus to IP master command acknowledgement
  Bus2IP_Mst_Cmplt,           // Bus to IP master transfer completion
  Bus2IP_MstRd_d,             // Bus to IP master read data bus
  Bus2IP_MstRd_eof_n,         // Bus to IP master read end of frame
  Bus2IP_MstRd_src_rdy_n,     // Bus to IP master read source ready
  IP2Bus_MstRd_dst_rdy_n,     // IP to Bus master read destination ready
  IP2Bus_MstRd_dst_dsc_n      // IP to Bus master read destination discontinue
 
); 


// -- parameters definition 
parameter  integer C_TFT_INTERFACE          = 1;          
parameter  integer C_I2C_SLAVE_ADDR         = 7'b1110110;          
//parameter  integer C_DEFAULT_TFT_BASE_ADDR  = 11'b11110000000;
parameter  [0:63] C_DEFAULT_TFT_BASE_ADDR  = 64'h00000000F0000000;
parameter  integer C_IOREG_STYLE            = 1;
parameter  integer C_EN_I2C_INTF            = 1;

parameter          C_FAMILY                 = "virtex7";
parameter  integer C_SLV_DWIDTH             = 32;
parameter  integer C_MST_AWIDTH             = 32;
parameter  integer C_MST_DWIDTH             = 64;
parameter  integer C_NUM_REG                = 6;
// C_TRANS_INIT
// 640/32 = 20 - 1 = 19
// 800/32 = 25 - 1 = 24
parameter  integer C_TRANS_INIT             = 24;
parameter  integer C_LINE_INIT              = 479;

// TFT SIGNALS
input                              SYS_TFT_Clk;
output                             TFT_HSYNC;
output                             TFT_VSYNC;
output                             TFT_DE; 
output                             TFT_DPS; 
output                             TFT_VGA_CLK; 
output    [7:0]                    TFT_VGA_R; 
output    [7:0]                    TFT_VGA_G; 
output    [7:0]                    TFT_VGA_B; 
output                             TFT_DVI_CLK_P; 
output                             TFT_DVI_CLK_N; 
output    [11:0]                   TFT_DVI_DATA; 

// IIC init signals
input                              TFT_IIC_SCL_I;
output                             TFT_IIC_SCL_O;
output                             TFT_IIC_SCL_T;
input                              TFT_IIC_SDA_I;
output                             TFT_IIC_SDA_O;
output                             TFT_IIC_SDA_T;

// AXI Slave signals 
input                              S_AXI_Clk;
input                              S_AXI_Rst;
input     [0 : C_SLV_DWIDTH-1]     Bus2IP_Data;
input     [0 : C_NUM_REG-1]        Bus2IP_RdCE;
input     [0 : C_NUM_REG-1]        Bus2IP_WrCE;
input     [0 : C_SLV_DWIDTH/8-1]   Bus2IP_BE;
output    [0 : C_SLV_DWIDTH-1]     IP2Bus_Data;
output                             IP2Bus_RdAck;
output                             IP2Bus_WrAck;
output                             IP2Bus_Error;

output                             IP2INTC_Irpt;

// AXI Master signals 
input                              M_AXI_Clk;
input                              M_AXI_Rst;
output                             IP2Bus_MstRd_Req;
output    [0 : C_MST_AWIDTH-1]     IP2Bus_Mst_Addr;
output    [0 : C_MST_DWIDTH/8-1]   IP2Bus_Mst_BE;
output    [0 : 11]                 IP2Bus_Mst_Length;
output                             IP2Bus_Mst_Type;
output                             IP2Bus_Mst_Lock;
output                             IP2Bus_Mst_Reset;
input                              Bus2IP_Mst_CmdAck;
input                              Bus2IP_Mst_Cmplt;
input     [0 : C_MST_DWIDTH-1]     Bus2IP_MstRd_d;
input                              Bus2IP_MstRd_eof_n;
input                              Bus2IP_MstRd_src_rdy_n;
output                             IP2Bus_MstRd_dst_rdy_n;
output                             IP2Bus_MstRd_dst_dsc_n;

//////////////////////////////////////////////////////////////////////////////
// Implementation
//////////////////////////////////////////////////////////////////////////////
localparam BASE_ADD_LEN = C_MST_AWIDTH-22;//(C_MST_AWIDTH == 32) ? 10: (C_MST_AWIDTH-21);
//localparam BASE_ADD_LEN = (C_MST_AWIDTH == 32) ? 10: 42;
    // AXI_IF to RGB_BRAM  
  reg    [0:63]                    AXI_BRAM_data_i;
  reg                              AXI_BRAM_we_i;

  // HSYNC and VSYNC to TFT_IF
  wire                             HSYNC_i;
  wire                             VSYNC_i;

  // DE GENERATION
  wire                             H_DE_i;
  wire                             V_DE_i;
  wire                             DE_i;

  // RGB_BRAM to TFT_IF
  wire   [7:0]                     RED_i;
  wire   [7:0]                     GREEN_i;
  wire   [7:0]                     BLUE_i;
  wire                             I2C_done;
  wire                             I2C_done_tft;

  // VSYNC RESET
  wire                             vsync_rst;

  // TFT READ FROM BRAM
  wire                             BRAM_TFT_rd;
  wire                             BRAM_TFT_oe;

  // Hsync|Vsync terminal counts                                   
  wire                             h_bp_cnt_tc;
  wire                             h_bp_cnt_tc2;  
  wire                             h_pix_cnt_tc;
  wire                             h_pix_cnt_tc2;
  reg    [0:4]                     trans_cnt;
  reg    [0:4]                     trans_cnt_i;
  wire                             trans_cnt_tc;
  reg    [0:8]                     line_cnt;
  reg    [0:8]                     line_cnt_i;
  wire                             line_cnt_ce;
  wire                             mn_request_set;
  wire                             trans_cnt_tc_pulse;
  wire                             mn_request;

  // get line pulse
  wire                              get_line;
  
  // TFT controller Registers
  wire   [0:BASE_ADD_LEN]         tft_base_addr_i;
  wire   [0:BASE_ADD_LEN]         tft_base_addr_d2;
  reg    [0:BASE_ADD_LEN]         tft_base_addr;
  wire                             tft_on_reg;
  wire                             tft_on_reg_i;

  // TFT control signals
  wire                             tft_on_reg_bram_d2;
  wire                             v_bp_cnt_tc;
  wire                             get_line_start;
  reg                              get_line_start_d1;
  wire                             v_l_cnt_tc;
  wire                             v_p_cnt_tc;

                                   
  // TFT Reset signals                   
  wire                             tft_rst;   

  // axi reset signals
  //wire                             axi_rst_d6;    
  (*ASYNC_REG = "TRUE"*) reg       axi_rst_d1;    
  (*ASYNC_REG = "TRUE"*) reg       axi_rst_d6;    
  reg                              IP2Bus_MstRd_Req;
  reg                              IP2Bus_Mst_Type;
  reg                              IP2Bus_MstRd_dst_rdy;
  reg                              eof_n;
  reg                              trans_cnt_tc_pulse_i;
  wire                             eof_pulse;
  wire                             master_rst;
  wire                             ip2intc_irpt_i;
  wire                             tft_intr_en_i;
  wire                             tft_intr_en_maxi;
  wire                             tft_status_i;
  wire                             vsync_intr;
  reg                              vsync_intr_d1;
  reg                              vsync_intr_d2;
  wire                             v_bp_pulse;  
  wire                             iic_xfer_done_i;  
  wire                             tft_iic_xfer_i;  
  wire [0:7]                       tft_iic_reg_addr_i;  
  wire [0:7]                       tft_iic_reg_data_i;  
  
  
  // AXI Master Interface signals
  assign IP2Bus_MstRd_dst_rdy_n = ~IP2Bus_MstRd_dst_rdy;
  assign IP2Bus_MstRd_dst_dsc_n     = 1'b1;                             
  assign IP2Bus_Mst_Length          = 12'b000010000000;
  assign IP2Bus_Mst_BE              = 8'b0;   
  assign IP2Bus_Mst_Lock            = 1'b0;   
  assign IP2Bus_Mst_Reset           = ~tft_on_reg; 
  assign IP2Bus_Mst_Addr[0:BASE_ADD_LEN]  = tft_base_addr; //0:42
  //assign IP2Bus_Mst_Addr[0:10]      = tft_base_addr; 
  assign IP2Bus_Mst_Addr[BASE_ADD_LEN+1:BASE_ADD_LEN+9]     = line_cnt_i; //43:51
  //assign IP2Bus_Mst_Addr[11:19]     = line_cnt_i;
  assign IP2Bus_Mst_Addr[BASE_ADD_LEN+10:BASE_ADD_LEN+14]     = trans_cnt_i; //52:56
  //assign IP2Bus_Mst_Addr[20:24]     = trans_cnt_i;
  //assign IP2Bus_Mst_Addr[25:31]     = 7'b0000000; 
  assign IP2Bus_Mst_Addr[BASE_ADD_LEN+15:BASE_ADD_LEN+21]     = 7'b0000000; //57:63

 

  /////////////////////////////////////
  // Generate Frame complete interrupt
  // for master burst interface
  /////////////////////////////////////

  // Synchronize the tft_intr_en_i signal w.r.t. M_AXI clock 
  cdc_sync
    #(
        .C_CDC_TYPE      (1),
        .C_RESET_STATE   (0), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (4))
   INTR_EN_SYNC
    (
        .prmry_aclk         (S_AXI_Clk),
        .prmry_resetn       (1'b0),
        .prmry_in           (tft_intr_en_i),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (M_AXI_Clk),
        .scndry_resetn      (1'b0), 
        .scndry_out         (tft_intr_en_maxi),
        .scndry_vect_out    ()); 


  assign ip2intc_irpt_i = tft_intr_en_maxi & vsync_intr;

  // Generate TFT DE
  FDR FDR_IP2INTC_Irpt (.Q(IP2INTC_Irpt),    
                        .C(M_AXI_Clk), 
                        .R(master_rst), 
                        .D(ip2intc_irpt_i));

  
  /////////////////////////////////////////////////////////////////////////////                                                   
  // REQUEST LOGIC for AXI 
  /////////////////////////////////////////////////////////////////////////////
  assign mn_request_set = ((get_line & (trans_cnt == 0)) | 
                           (Bus2IP_Mst_Cmplt & trans_cnt != 0));
  
  /////////////////////////////////
  // Generate Master read request 
  // for master burst interface
  /////////////////////////////////
  always @(posedge M_AXI_Clk)
  begin : MST_REQ
    if (Bus2IP_Mst_CmdAck | master_rst | trans_cnt_tc_pulse) 
      begin
        IP2Bus_MstRd_Req <= 1'b0;
      end
    else if (mn_request_set) 
      begin
        IP2Bus_MstRd_Req <= 1'b1;
      end 
   end   

  /////////////////////////////////
  // Generate Master Type signal 
  // for master burst interface
  /////////////////////////////////
  always @(posedge M_AXI_Clk)
  begin : MST_TYPE
    if (Bus2IP_Mst_CmdAck | master_rst) 
      begin
        IP2Bus_Mst_Type <= 1'b0;
      end
    else if (mn_request_set)
      begin
        IP2Bus_Mst_Type <= 1'b1;
      end
   end
    
  //////////////////////////////////////////
  // Generate Master read destination ready 
  // for master burst interface
  //////////////////////////////////////////
  always @(posedge M_AXI_Clk)
  begin : MST_DST_RDY
    if (master_rst | eof_pulse) 
      begin
        IP2Bus_MstRd_dst_rdy <= 1'b0;
      end
    else if (mn_request_set) 
      begin
        IP2Bus_MstRd_dst_rdy <= 1'b1;
      end
   end


 

  /////////////////////////////////////////////////////////////////////////////
  // Generate control signals for line count and trans count
  /////////////////////////////////////////////////////////////////////////////    
  // Generate end of frame from Master burst interface 
  always @(posedge M_AXI_Clk)
  begin : EOF_GEN
    if (master_rst) 
      begin
        eof_n <= 1'b1;
      end
    else     
      begin
        eof_n <= Bus2IP_MstRd_eof_n;
      end
  end 
 
  // Generate one shot pulse for end of frame  
  assign eof_pulse = ~eof_n & Bus2IP_MstRd_eof_n;
  
  
  // Registering trans_cnt_tc to generate one shot pulse 
  // for trans_counter terminal count  
  always @(posedge M_AXI_Clk)
  begin : TRANS_CNT_TC_I
    if (master_rst) 
      begin
        trans_cnt_tc_pulse_i <= 1'b0;
      end
    else     
      begin 
        trans_cnt_tc_pulse_i <= trans_cnt_tc;
      end
  end 

  // Generate one shot pulse for trans_counter terminal count  
  assign trans_cnt_tc_pulse = trans_cnt_tc_pulse_i & ~trans_cnt_tc;  
                          

  /////////////////////////////////////////////////////////////////////////////
  // Generate AXI memory addresses
  /////////////////////////////////////////////////////////////////////////////    

 // load tft_base_addr from tft address register after completing 
 // the current frame only
generate
      if (C_MST_AWIDTH == 32) // When Address width 32
      begin 
 always @(posedge M_AXI_Clk)
 begin : MST_BASE_ADDR_GEN
   if (master_rst) 
     begin
       tft_base_addr <= C_DEFAULT_TFT_BASE_ADDR[32:42];
     end
   else if (v_bp_pulse) 
     begin
       tft_base_addr <= tft_base_addr_d2;
     end
 end 
end
else begin
always @(posedge M_AXI_Clk)
 begin : MST_BASE_ADDR_GEN_64
   if (master_rst) 
     begin
       //tft_base_addr <= C_DEFAULT_TFT_BASE_ADDR[0:BASE_ADD_LEN];
       tft_base_addr <= C_DEFAULT_TFT_BASE_ADDR[64-C_MST_AWIDTH:42];
     end
   else if (v_bp_pulse) 
     begin
       tft_base_addr <= tft_base_addr_d2;
     end
 end 

 end
 endgenerate
  // Load line counter and trans counter if the master request is set
  always @(posedge M_AXI_Clk)
  begin : MST_LINE_ADDR_GEN
    if (master_rst) 
      begin 
        line_cnt_i      <= 9'b0;
        trans_cnt_i     <= 5'b0;
      end  
    else if (mn_request_set) 
      begin
        line_cnt_i      <= line_cnt;
        trans_cnt_i     <= trans_cnt;
      end 
  end 
                             
  
  /////////////////////////////////////////////////////////////////////////////
  // Transaction Counter - Counts 0-19 (d) C_TRANS_INIT
  /////////////////////////////////////////////////////////////////////////////      

  // Generate trans_count_tc 
  assign trans_cnt_tc = (trans_cnt == C_TRANS_INIT);

  // Trans_count counter.
  // Update the counter after every 128 byte frame 
  // received from the master burst interface.
  always @(posedge M_AXI_Clk)
  begin : TRANS_CNT_I
    if(master_rst | vsync_intr)
      begin
        trans_cnt <= 5'b0;
      end   
    else if (eof_pulse) 
      begin
        if (trans_cnt_tc)
          begin
            trans_cnt <= 5'b0;
          end  
        else 
          begin 
            trans_cnt <= trans_cnt + 1;
          end  
      end
  end

  /////////////////////////////////////////////////////////////////////////////
  // Line Counter - Counts 0-479 (d)  C_LINE_INIT
  /////////////////////////////////////////////////////////////////////////////      

  // Generate trans_count_tc 
  assign line_cnt_ce = trans_cnt_tc_pulse;
  
  // Line_count counter.
  // Update the counter after every line is received 
  // from the master burst interface.
  always @(posedge M_AXI_Clk)
  begin : LINE_CNT_I
    if (master_rst | vsync_intr)
      begin 
        line_cnt <= 9'b0; 
      end  
    else if (line_cnt_ce) 
      begin
        if (line_cnt == C_LINE_INIT)
          begin 
            line_cnt <= 9'b0;
          end  
        else
          begin 
            line_cnt <= line_cnt + 1;
          end  
      end
  end

  // BRAM_TFT_rd and BRAM_TFT_oe start the read process. These are constant
  // signals through out a line read.  
  assign BRAM_TFT_rd = ((DE_i ^ h_bp_cnt_tc ^ h_bp_cnt_tc2 ) & V_DE_i);
  assign BRAM_TFT_oe = ((DE_i ^ h_bp_cnt_tc) & V_DE_i);  
  
  /////////////////////////////////////////////////////////////////////////////
  // Generate line buffer write enable signal and register the AXI data
  /////////////////////////////////////////////////////////////////////////////    
  always @(posedge M_AXI_Clk)
  begin : BRAM_DATA_WE
    if(master_rst)
      begin
        AXI_BRAM_data_i  <= 64'b0;
        AXI_BRAM_we_i    <= 1'b0;
      end
    else
      begin
        AXI_BRAM_data_i  <= Bus2IP_MstRd_d;
        AXI_BRAM_we_i    <= ~Bus2IP_MstRd_src_rdy_n;
      end                             
  end
  
  /////////////////////////////////////////////////////////////////////////////
  // Generate Get line start signal to fetch the video data from AXI  attached
  // video memory
  /////////////////////////////////////////////////////////////////////////////
  // get line start logic
  assign get_line_start = ((h_pix_cnt_tc && v_bp_cnt_tc) || // 1st get line
                           (h_pix_cnt_tc && DE_i) &&     // 2nd,3rd,...get line
                           (~v_l_cnt_tc));               // No get_line on last 
                                                         //line      

  // Generate DE for HW
  assign DE_i = (H_DE_i & V_DE_i);
  
      
  // Synchronize the get line signal w.r.t. M_AXI clock
  always @(posedge SYS_TFT_Clk)
  begin : GET_LINE_START_I
    if (tft_rst)
      begin
        get_line_start_d1 <= 1'b0;
      end
    else
      begin
        get_line_start_d1 <= get_line_start;
      end
  end
  
  // Synchronize the get line signal w.r.t. M_AXI clock //Sync needed
  cdc_sync
    #(
        .C_CDC_TYPE      (0),
        .C_RESET_STATE   (1), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (4))
   GET_LINE_SYNC
    (
        .prmry_aclk         (SYS_TFT_Clk),
        .prmry_resetn       (~tft_rst),
        .prmry_in           (get_line_start_d1),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (M_AXI_Clk),
        .scndry_resetn      (~M_AXI_Rst), 
        .scndry_out         (get_line),
        .scndry_vect_out    ()); 


  /////////////////////////////////////////////////////////////////////////////
  // Sample VSYNC Frame Complete signal. 
  ///////////////////////////////////////////////////////////////////////////// 
  cdc_sync
    #(
        .C_CDC_TYPE      (0),
        .C_RESET_STATE   (1), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (4))
   V_P_SYNC
    (
        .prmry_aclk         (SYS_TFT_Clk),
        .prmry_resetn       (~tft_rst),
        .prmry_in           (v_p_cnt_tc),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (M_AXI_Clk),
        .scndry_resetn      (~M_AXI_Rst), 
        .scndry_out         (vsync_intr),
        .scndry_vect_out    ()); 

  /////////////////////////////////////////////////////////////////////////////
  // Synchronize all the signals crossing the clock domains
  // video memory
  /////////////////////////////////////////////////////////////////////////////

  // Synchronize the TFT clock domain signals w.r.t. M_AXI clock
  cdc_sync
    #(
        .C_CDC_TYPE      (0),
        .C_RESET_STATE   (1), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (4))
   V_BP_SYNC
    (
        .prmry_aclk         (SYS_TFT_Clk),
        .prmry_resetn       (~tft_rst),
        .prmry_in           (v_bp_cnt_tc),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (M_AXI_Clk),
        .scndry_resetn      (~M_AXI_Rst), 
        .scndry_out         (v_bp_pulse),
        .scndry_vect_out    ()); 


  // Synchronize the slave register signals w.r.t. M_AXI clock
  cdc_sync
    #(
        .C_CDC_TYPE      (1),
        .C_RESET_STATE   (0), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (4))
   TFT_ON_MAXI_SYNC
    (
        .prmry_aclk         (S_AXI_Clk),
        .prmry_resetn       (1'b0),
        .prmry_in           (tft_on_reg_i),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (M_AXI_Clk),
        .scndry_resetn      (1'b0), 
        .scndry_out         (tft_on_reg),
        .scndry_vect_out    ()); 

   cdc_sync
    #(
        .C_CDC_TYPE      (1),
        .C_RESET_STATE   (0), 
        .C_SINGLE_BIT    (0), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (BASE_ADD_LEN+1),
        .C_MTBF_STAGES   (4))
   BASE_ADDR_SYNC
    (
        .prmry_aclk         (S_AXI_Clk),
        .prmry_resetn       (1'b0),
        .prmry_in           (1'b0),
        .prmry_vect_in      (tft_base_addr_i),
        .prmry_ack          (),
        .scndry_aclk        (M_AXI_Clk),
        .scndry_resetn      (1'b0), 
        .scndry_out         (),
        .scndry_vect_out    (tft_base_addr_d2)); 


  // Synchronize the tft_on_reg signal w.r.t. SYS_TFT_Clk
  cdc_sync
    #(
        .C_CDC_TYPE      (1),
        .C_RESET_STATE   (0), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (2))
   TFT_ON_TFT_SYNC
    (
        .prmry_aclk         (S_AXI_Clk),
        .prmry_resetn       (1'b0),
        .prmry_in           (tft_on_reg_i),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (SYS_TFT_Clk),
        .scndry_resetn      (1'b0), 
        .scndry_out         (tft_on_reg_bram_d2),
        .scndry_vect_out    ()); 


  // Increase the width of the signal to match with S_AXI clock
  cdc_sync
    #(
        .C_CDC_TYPE      (0),
        .C_RESET_STATE   (1), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (4))
   V_INTR_SYNC
    (
        .prmry_aclk         (M_AXI_Clk),
        .prmry_resetn       (~M_AXI_Rst),
        .prmry_in           (vsync_intr),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (S_AXI_Clk),
        .scndry_resetn      (~S_AXI_Rst), 
        .scndry_out         (tft_status_i),
        .scndry_vect_out    ()); 


  /////////////////////////////////////////////////////////////////////////////

  
  // Generate master interface reset from the M_AXI reset and tft_on_reg
  assign master_rst = M_AXI_Rst | ~tft_on_reg;
  
  // Generate TFT reset from the master reset,I2C done

  always@(posedge SYS_TFT_Clk or posedge M_AXI_Rst)
  begin
      if(M_AXI_Rst) begin
          axi_rst_d1 <= 1'b0;
          axi_rst_d6 <= 1'b0;
      end else begin
          axi_rst_d1 <= 1'b1;
          axi_rst_d6 <= axi_rst_d1;
      end
  end
  //cdc_sync
  //  #(
  //      .C_CDC_TYPE      (1),
  //      .C_RESET_STATE   (1), 
  //      .C_SINGLE_BIT    (1), 
  //      .C_FLOP_INPUT    (0),
  //      .C_VECTOR_WIDTH  (1),
  //      .C_MTBF_STAGES   (2))
  //  TFT_RST_SYNC
  //  (
  //      .prmry_aclk         (M_AXI_Clk),
  //      .prmry_resetn       (~M_AXI_Rst),
  //      .prmry_in           (1'b1),
  //      .prmry_vect_in      (1'b0),
  //      .prmry_ack          (),
  //      .scndry_aclk        (SYS_TFT_Clk),
  //      .scndry_resetn      (~M_AXI_Rst), 
  //      .scndry_out         (axi_rst_d6),
  //      .scndry_vect_out    ());


 
  // Synchronize the M_AXI reset with SYS_TFT_CLK
  cdc_sync
    #(
        .C_CDC_TYPE      (1),
        .C_RESET_STATE   (0), 
        .C_SINGLE_BIT    (1), 
        .C_FLOP_INPUT    (0),
        .C_VECTOR_WIDTH  (1),
        .C_MTBF_STAGES   (2))
    I2C_DONE_SYNC
    (
        .prmry_aclk         (S_AXI_Clk),
        .prmry_resetn       (1'b0),
        .prmry_in           (I2C_done),
        .prmry_vect_in      (1'b0),
        .prmry_ack          (),
        .scndry_aclk        (SYS_TFT_Clk),
        .scndry_resetn      (1'b0), 
        .scndry_out         (I2C_done_tft),
        .scndry_vect_out    ());

 // assign tft_rst = ~axi_rst_d6 | ~I2C_done_tft | ~tft_on_reg_bram_d2;

      generate
      if (C_IOREG_STYLE == 0) // Selects 7 seriese
        begin : gen_7s
            assign tft_rst = ~axi_rst_d6 | ~I2C_done_tft | ~tft_on_reg_bram_d2;
        end
      else  // Selects 8 seriese
        begin : gen_8s
            reg tft_rst_d1;
            reg tft_rst_d2;
            reg tft_rst_d3;
            reg tft_rst_d4;
            
            always @(posedge SYS_TFT_Clk) begin
                tft_rst_d1 <= ~axi_rst_d6 | ~I2C_done_tft | ~tft_on_reg_bram_d2;
                tft_rst_d2 <= tft_rst_d1;
                tft_rst_d3 <= tft_rst_d2;
                tft_rst_d4 <= tft_rst_d3;
            end
            assign tft_rst = tft_rst_d4;
        end
      endgenerate


  /////////////////////////////////////////////////////////////////////////////
  // Slave Register COMPONENT INSTANTIATION
  /////////////////////////////////////////////////////////////////////////////
  axi_tft_v2_1_10_slave_register 
    #(
      .C_DEFAULT_TFT_BASE_ADDR   (C_DEFAULT_TFT_BASE_ADDR), 
      .C_SLV_DWIDTH              (C_SLV_DWIDTH), 
      .C_SLV_AWIDTH              (C_MST_AWIDTH), 
      .C_NUM_REG                 (C_NUM_REG)
    )
    SLAVE_REG_U6 
    (
      .S_AXI_Clk          (S_AXI_Clk),
      .S_AXI_Rst          (S_AXI_Rst),
      .Bus2IP_Data      (Bus2IP_Data),         
      .Bus2IP_RdCE      (Bus2IP_RdCE),     
      .Bus2IP_WrCE      (Bus2IP_WrCE),     
      .Bus2IP_BE        (Bus2IP_BE),
      .IP2Bus_Data      (IP2Bus_Data),         
      .IP2Bus_RdAck     (IP2Bus_RdAck),       
      .IP2Bus_WrAck     (IP2Bus_WrAck),    
      .IP2Bus_Error     (IP2Bus_Error), 
      .TFT_base_addr    (tft_base_addr_i),
      .TFT_dps_reg      (TFT_DPS),
      .TFT_on_reg       (tft_on_reg_i),
      .TFT_intr_en      (tft_intr_en_i),
      .TFT_status       (tft_status_i),
      .IIC_xfer_done    (iic_xfer_done_i),
      .TFT_iic_xfer     (tft_iic_xfer_i),
      .TFT_iic_reg_addr (tft_iic_reg_addr_i),
      .TFT_iic_reg_data (tft_iic_reg_data_i)
  );              
                  
  /////////////////////////////////////////////////////////////////////////////
  // RGB_BRAM COMPONENT INSTANTIATION
  /////////////////////////////////////////////////////////////////////////////              
  axi_tft_v2_1_10_line_buffer #(.C_FAMILY (C_FAMILY))LINE_BUFFER_U4
    (
    .TFT_Clk         (SYS_TFT_Clk),
    .TFT_Rst         (tft_rst),
    .AXI_Clk         (M_AXI_Clk),
    .AXI_Rst         (master_rst),
    .BRAM_TFT_rd     (BRAM_TFT_rd), 
    .BRAM_TFT_oe     (BRAM_TFT_oe), 
    .AXI_BRAM_data   (AXI_BRAM_data_i),
    .AXI_BRAM_we     (AXI_BRAM_we_i),
    .RED             (RED_i),
    .GREEN           (GREEN_i), 
    .BLUE            (BLUE_i)
  );              
                  
  /////////////////////////////////////////////////////////////////////////////
  //HSYNC COMPONENT INSTANTIATION
  /////////////////////////////////////////////////////////////////////////////  
  axi_tft_v2_1_10_h_sync HSYNC_U2 (
    .Clk             (SYS_TFT_Clk), 
    .Rst             (tft_rst), 
    .HSYNC           (HSYNC_i), 
    .H_DE            (H_DE_i), 
    .VSYNC_Rst       (vsync_rst), 
    .H_bp_cnt_tc     (h_bp_cnt_tc),    
    .H_bp_cnt_tc2    (h_bp_cnt_tc2), 
    .H_pix_cnt_tc    (h_pix_cnt_tc),  
    .H_pix_cnt_tc2   (h_pix_cnt_tc2) 
  );              
                 
  /////////////////////////////////////////////////////////////////////////////
  // VSYNC COMPONENT INSTANTIATION
  ///////////////////////////////////////////////////////////////////////////// 
  axi_tft_v2_1_10_v_sync VSYNC_U3 (
    .Clk          (SYS_TFT_Clk),
    .Clk_stb      (~HSYNC_i), 
    .Rst          (vsync_rst), 
    .VSYNC        (VSYNC_i), 
    .V_DE         (V_DE_i),
    .V_bp_cnt_tc  (v_bp_cnt_tc),
    .V_p_cnt_tc   (v_p_cnt_tc),
    .V_l_cnt_tc   (v_l_cnt_tc)
  );            
               

  /////////////////////////////////////////////////////////////////////////////
  // TFT_IF COMPONENT INSTANTIATION
  /////////////////////////////////////////////////////////////////////////////
  axi_tft_v2_1_10_tft_interface 
    #(
      .C_FAMILY          (C_FAMILY),
      .C_TFT_INTERFACE   (C_TFT_INTERFACE), 
      .C_I2C_SLAVE_ADDR  (C_I2C_SLAVE_ADDR),
      .C_IOREG_STYLE     (C_IOREG_STYLE), 
      .C_EN_I2C_INTF     (C_EN_I2C_INTF) 

    )
    TFT_IF_U5
    (
      .TFT_Clk           (SYS_TFT_Clk),
      .TFT_Rst           (tft_rst),
      .TFT_Rst_8s        (~axi_rst_d6 | ~I2C_done_tft | ~tft_on_reg_bram_d2),
      .Bus2IP_Clk        (S_AXI_Clk),
      .Bus2IP_Rst        (S_AXI_Rst),
      .HSYNC             (HSYNC_i),
      .VSYNC             (VSYNC_i),
      .DE                (DE_i),   
      .RED               (RED_i),
      .GREEN             (GREEN_i),
      .BLUE              (BLUE_i),
      .TFT_HSYNC         (TFT_HSYNC),
      .TFT_VSYNC         (TFT_VSYNC),
      .TFT_DE            (TFT_DE),
      .TFT_VGA_CLK       (TFT_VGA_CLK),
      .TFT_VGA_R         (TFT_VGA_R),
      .TFT_VGA_G         (TFT_VGA_G),
      .TFT_VGA_B         (TFT_VGA_B), 
      .TFT_DVI_CLK_P     (TFT_DVI_CLK_P),
      .TFT_DVI_CLK_N     (TFT_DVI_CLK_N),
      .TFT_DVI_DATA      (TFT_DVI_DATA),
      .I2C_done          (I2C_done),
      .TFT_IIC_SCL_I     (TFT_IIC_SCL_I),
      .TFT_IIC_SCL_O     (TFT_IIC_SCL_O),
      .TFT_IIC_SCL_T     (TFT_IIC_SCL_T),
      .TFT_IIC_SDA_I     (TFT_IIC_SDA_I),
      .TFT_IIC_SDA_O     (TFT_IIC_SDA_O),
      .TFT_IIC_SDA_T     (TFT_IIC_SDA_T),
      .IIC_xfer_done     (iic_xfer_done_i),
      .TFT_iic_xfer      (tft_iic_xfer_i),
      .TFT_iic_reg_addr  (tft_iic_reg_addr_i),
      .TFT_iic_reg_data  (tft_iic_reg_data_i)
  );
  
  
endmodule
