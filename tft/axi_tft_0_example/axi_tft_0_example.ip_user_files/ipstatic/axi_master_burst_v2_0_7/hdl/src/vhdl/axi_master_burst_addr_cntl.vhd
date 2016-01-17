-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_addr_cntl.vhd
--
-- Description:     
--    This file implements the AXI Master Burst Address Controller.                 
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--
--      axi_master_burst.vhd
--          |
--          |-- proc_common_v4_0_2 (helper library)
--          |
--          |-- axi_master_burst_reset.vhd
--          |
--          |-- axi_master_rd_llink.vhd
--          |
--          |-- axi_master_wr_llink.vhd
--          |
--          |
--          |-- axi_master_burst_cmd_status.vhd
--          |       |-- axi_master_burst_first_stb_offset.vhd
--          |       |-- axi_master_burst_stbs_set.vhd
--          |
--          |-- axi_master_burst_rd_wr_cntlr.vhd
--                  |--  axi_master_burst_pcc.vhd
--                  |        |--  axi_master_burst_strb_gen.vhd
--                  |--  axi_master_burst_addr_cntl.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_rddata_cntl.vhd
--                  |        |--  axi_master_burst_rdmux.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_wrdata_cntl.vhd
--                  |        |--  axi_master_burst_strb_gen
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_rd_status_cntl.vhd
--                  |--  axi_master_burst_wr_status_cntl.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_skid_buf.vhd
--                  |--  axi_master_burst_skid2mm_buf.vhd
--
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.1.2.9 $
-- Date:            $1/19/2011$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover v2_00_a axi_datamover_addr_cntl.vhd
-- ^^^^^^
--
--     DET     2/10/2011     Initial for EDK 13.2
-- ~~~~~~
--     - Added the inputs doing_read and doing_write
--     - Split the addr2axi_avalid output into two separate
--       outputs addr2axi_arvalid and addr2axi_awvalid. This 
--       was required to provide registered outputs per Lint
--       guidelines.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library axi_master_burst_v2_0_7;
Use axi_master_burst_v2_0_7.axi_master_burst_fifo;

-------------------------------------------------------------------------------

entity axi_master_burst_addr_cntl is
  generic (
    C_ADDR_FIFO_DEPTH      : Integer range  1 to  32 :=  4;
    C_ADDR_WIDTH           : Integer range 32 to  64 := 32;
    C_ADDR_ID              : Integer range  0 to 255 :=  0;
    C_ADDR_ID_WIDTH        : Integer range  1 to   8 :=  4;
    C_TAG_WIDTH            : Integer range  1 to   8 :=  4;
    C_FAMILY               : String  := "virtex7"
    );
  port (
    
    -- Clock input
    primary_aclk         : in  std_logic;
       -- Primary synchronization clock for the Master side
       -- interface and internal logic. It is also used 
       -- for the User interface synchronization when 
       -- C_STSCMD_IS_ASYNC = 0.

    -- Reset input
    mmap_reset           : in  std_logic;
       -- Reset used for the internal master logic
    
    

    -- Read Command Type Discrete Input
    doing_read       : in std_logic;

    -- Write Command Type Discrete Input
    doing_write      : in std_logic;



   
    -- AXI Address Channel I/O  -------------------------------
    addr2axi_aid     : out std_logic_vector(C_ADDR_ID_WIDTH-1 downto 0);
       -- AXI Address Channel ID output
      
    addr2axi_aaddr   : out std_logic_vector(C_ADDR_WIDTH-1 downto 0);
       -- AXI Address Channel Address output
      
    addr2axi_alen    : out std_logic_vector(7 downto 0);
       -- AXI Address Channel LEN output
       -- Sized to support 256 data beat bursts
      
    addr2axi_asize   : out std_logic_vector(2 downto 0);
       -- AXI Address Channel SIZE output
      
    addr2axi_aburst  : out std_logic_vector(1 downto 0);
       -- AXI Address Channel BURST output
      
    addr2axi_aprot   : out std_logic_vector(2 downto 0);
       -- AXI Address Channel PROT output
      
    addr2axi_arvalid  : out std_logic;
       -- AXI Read Address Channel VALID output
    
    addr2axi_awvalid  : out std_logic;
       -- AXI Write Address Channel VALID output
      
    axi2addr_aready  : in  std_logic;
       -- AXI Address Channel READY input
      
    -- Currently unsupported AXI Address Channel output signals ------------
      -- addr2axi_alock   : out std_logic_vector(2 downto 0);
      -- addr2axi_acache  : out std_logic_vector(4 downto 0);
      -- addr2axi_aqos    : out std_logic_vector(3 downto 0);
      -- addr2axi_aregion : out std_logic_vector(3 downto 0);
    -----------------------------------------------------------------
    
    
    
    -- Command Calculation Interface -------------------------------------
    mstr2addr_tag         : In std_logic_vector(C_TAG_WIDTH-1 downto 0);
       -- The next command tag
    
    mstr2addr_addr        : In  std_logic_vector(C_ADDR_WIDTH-1 downto 0);
       -- The next command address to put on the AXI MMap ADDR
    
    mstr2addr_len         : In  std_logic_vector(7 downto 0);
       -- The next command length to put on the AXI MMap LEN
       -- Sized to support 256 data beat bursts
    
    mstr2addr_size        : In  std_logic_vector(2 downto 0);
       -- The next command size to put on the AXI MMap SIZE
    
    mstr2addr_burst       : In  std_logic_vector(1 downto 0);
       -- The next command burst type to put on the AXI MMap BURST

    mstr2addr_cmd_cmplt   : In std_logic;
       -- The indication to the Address Channel that the current
       -- sub-command output is the last one compiled from the
       -- parent command pulled from the Command FIFO

    mstr2addr_calc_error  : In std_logic;
       -- Indication if the next command in the calculation pipe 
       -- has a calculation error 
    
    mstr2addr_cmd_valid   : in std_logic;
       -- The next command valid indication to the Address Channel 
       -- Controller for the AXI MMap 
    
    addr2mstr_cmd_ready   : out std_logic;
       -- Indication to the Command Calculator that the  
       -- command is being accepted  
    
   
   
    
    -- Halted Indication to Reset Module ----------------------------
    addr2rst_stop_cmplt     : out std_logic; 
       -- Output flag indicating the address controller has stopped
       -- posting commands to the Address Channel due to a stop 
       -- request vai the data2addr_stop_req input port
     
    
    
    -- Address Generation Control ---------------------------------
    allow_addr_req    : in std_logic;
       -- Input used to enable/stall the posting of address requests.
       -- 0 = stall address request generation.
       -- 1 = Enable Address request geneartion
    
    addr_req_posted   : out std_logic;
       -- Indication from the Address Channel Controller to external   
       -- User logic that an address has been posted to the
       -- AXI Address Channel.
    
  
    
    -- Data Channel Interface -------------------------------------
    addr2data_addr_posted    : Out std_logic;
       -- Indication from the Address Channel Controller to the   
       -- Data Controller that an address has been posted to the
       -- AXI Address Channel.
   
    data2addr_data_rdy       : In std_logic;
       -- Indication that the Data Channel is ready to send the first
       -- databeat of the next command on the write data channel. 
       -- This is used for the "wait for data" feature which keeps the
       -- address controller from issuing a transfer requset until the
       -- corresponding data is ready. This is expected to be held in
       -- the asserted state until the addr2data_addr_posted signal is
       -- asserted.
    
    data2addr_stop_req       : In std_logic;
       -- Indication that the Data Channel has encountered an error
       -- or a soft shutdown request and needs the Address Controller  
       -- to stop posting commands to the AXI Address channel

     
    -- Status Module Interface -------------------------------------
    addr2stat_calc_error     : out std_logic;
       -- Indication to the Status Module that the Addr Cntl FIFO
       -- is loaded with a Calc error  
    
    addr2stat_cmd_fifo_empty : out std_logic
       -- Indication to the Status Module that the Addr Cntl FIFO
       -- is empty  
    
   
   
       
    );

end entity axi_master_burst_addr_cntl;


architecture implementation of axi_master_burst_addr_cntl is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


  -- Constant Declarations  --------------------------------------------
  Constant APROT_VALUE      : std_logic_vector(3-1 downto 0) := 
                              '0' & -- bit 2, Normal Access
                              '0' & -- bit 1, Nonsecure Access
                              '0';  -- bit 0, Data Access
  
  Constant LEN_WIDTH        : integer := 8;
  Constant SIZE_WIDTH       : integer := 3;
  Constant BURST_WIDTH      : integer := 2;
  Constant CMD_CMPLT_WIDTH  : integer := 1;
  Constant CALC_ERROR_WIDTH : integer := 1;
  
  Constant ADDR_QUAL_WIDTH  : integer := C_TAG_WIDTH     +  -- Cmd Tag field width
                                         C_ADDR_WIDTH    +  -- Cmd Address field width
                                         LEN_WIDTH       +  -- Cmd Len field width
                                         SIZE_WIDTH      +  -- Cmd Size field width
                                         BURST_WIDTH     +  -- Cmd Burst field width
                                         CMD_CMPLT_WIDTH +  -- Cmd Cmplt filed width
                                         CALC_ERROR_WIDTH;  -- Cmd Calc Error flag
  
  Constant USE_SYNC_FIFO    : integer := 0;
  Constant REG_FIFO_PRIM    : integer := 0; 
  Constant BRAM_FIFO_PRIM   : integer := 1; 
  Constant SRL_FIFO_PRIM    : integer := 2; 
  Constant FIFO_PRIM_TYPE   : integer := SRL_FIFO_PRIM; 
  
  
  
  
  
  -- Signal Declarations  --------------------------------------------
  signal sig_axi_addr               : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_axi_alen               : std_logic_vector(7 downto 0) := (others => '0');             
  signal sig_axi_asize              : std_logic_vector(2 downto 0) := (others => '0');             
  signal sig_axi_aburst             : std_logic_vector(1 downto 0) := (others => '0');             
  signal sig_axi_arvalid            : std_logic := '0';
  signal sig_axi_awvalid            : std_logic := '0';
  signal sig_axi_aready             : std_logic := '0';
  signal sig_addr_posted            : std_logic := '0';
  signal sig_calc_error             : std_logic := '0';
  signal sig_cmd_fifo_empty         : std_logic := '0';
  Signal sig_aq_fifo_data_in        : std_logic_vector(ADDR_QUAL_WIDTH-1 downto 0) := (others => '0');
  Signal sig_aq_fifo_data_out       : std_logic_vector(ADDR_QUAL_WIDTH-1 downto 0) := (others => '0');
  signal sig_fifo_next_tag          : std_logic_vector(C_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_fifo_next_addr         : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_fifo_next_len          : std_logic_vector(7 downto 0) := (others => '0');             
  signal sig_fifo_next_size         : std_logic_vector(2 downto 0) := (others => '0');             
  signal sig_fifo_next_burst        : std_logic_vector(1 downto 0) := (others => '0');
  signal sig_fifo_next_cmd_cmplt    : std_logic := '0';
  signal sig_fifo_calc_error        : std_logic := '0';
  signal sig_fifo_wr_cmd_valid      : std_logic := '0';
  signal sig_fifo_wr_cmd_ready      : std_logic := '0';
  signal sig_fifo_rd_cmd_valid      : std_logic := '0';
  signal sig_fifo_rd_cmd_ready      : std_logic := '0';
  signal sig_next_tag_reg           : std_logic_vector(C_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_addr_reg          : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_len_reg           : std_logic_vector(7 downto 0) := (others => '0');             
  signal sig_next_size_reg          : std_logic_vector(2 downto 0) := (others => '0');             
  signal sig_next_burst_reg         : std_logic_vector(1 downto 0) := (others => '0');             
  signal sig_next_cmd_cmplt_reg     : std_logic := '0';             
  signal sig_rd_addr_valid_reg      : std_logic := '0';
  signal sig_wr_addr_valid_reg      : std_logic := '0';
  signal sig_calc_error_reg         : std_logic := '0';
  signal sig_pop_addr_reg           : std_logic := '0';
  signal sig_push_addr_reg          : std_logic := '0';
  signal sig_addr_reg_empty         : std_logic := '0';
  signal sig_addr_reg_full          : std_logic := '0';
  signal sig_posted_to_axi          : std_logic := '0';
  signal sig_allow_addr_req         : std_logic := '0';
  signal sig_posted_to_axi_2        : std_logic := '0';


  ------------------------------------------------------------------------------------
  -- Register duplication attribute assignments to control fanout
  -- on handshake output signals  

  Attribute KEEP : string; -- declaration
  Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration

  Attribute KEEP of sig_posted_to_axi   : signal is "TRUE"; -- definition
  Attribute KEEP of sig_posted_to_axi_2 : signal is "TRUE"; -- definition

  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_posted_to_axi   : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_posted_to_axi_2 : signal is "no"; 




  
begin --(architecture implementation)

  -- AXI I/O Port assignments
  addr2axi_aid        <= STD_LOGIC_VECTOR(TO_UNSIGNED(C_ADDR_ID, C_ADDR_ID_WIDTH));
  addr2axi_aaddr      <= sig_axi_addr  ;
  addr2axi_alen       <= sig_axi_alen  ;
  addr2axi_asize      <= sig_axi_asize ;
  addr2axi_aburst     <= sig_axi_aburst;
  addr2axi_aprot      <= APROT_VALUE   ; 
  sig_axi_aready      <= axi2addr_aready;
  
  addr2axi_arvalid    <= sig_axi_arvalid;
  addr2axi_awvalid    <= sig_axi_awvalid;
  
                                          
                                          
  -- Command Calculator Handshake output
  sig_fifo_wr_cmd_valid <= mstr2addr_cmd_valid  ;
  addr2mstr_cmd_ready   <= sig_fifo_wr_cmd_ready;
  
  -- Data Channel Controller synchro pulse output                  
  addr2data_addr_posted <= sig_addr_posted;
   
   
  -- Status Module Interface outputs
  addr2stat_calc_error     <= sig_calc_error    ;
  addr2stat_cmd_fifo_empty <= sig_addr_reg_empty and
                              sig_cmd_fifo_empty; 
   
  

 
  -- Flag Indicating the Address Controller has completed a Stop
  addr2rst_stop_cmplt   <=  (data2addr_stop_req and  -- normal shutdown case
                             sig_addr_reg_empty) or
                            (data2addr_stop_req and  -- shutdown after error trap
                             sig_calc_error);
 
  -- Assign the address posting control and status
  sig_allow_addr_req    <=  allow_addr_req      ;
  addr_req_posted       <=  sig_posted_to_axi_2 ;
 
 
  
  -- Internal logic ------------------------------





  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_ADDR_FIFO
  --
  -- If Generate Description:
  --   Implements the case where the cmd qualifier depth is
  -- greater than 1.
  --
  ------------------------------------------------------------
  GEN_ADDR_FIFO : if (C_ADDR_FIFO_DEPTH > 1) generate

    begin

      -- Format the input FIFO data word 
      sig_aq_fifo_data_in <= mstr2addr_calc_error &
                             mstr2addr_cmd_cmplt  &
                             mstr2addr_burst      &
                             mstr2addr_size       &
                             mstr2addr_len        &
                             mstr2addr_addr       &
                             mstr2addr_tag ;
      
  
  
      -- Rip fields from FIFO output data word
      sig_fifo_calc_error     <=  sig_aq_fifo_data_out((C_ADDR_WIDTH  +
                                                      C_TAG_WIDTH     +
                                                      LEN_WIDTH       +
                                                      SIZE_WIDTH      +
                                                      BURST_WIDTH     +
                                                      CMD_CMPLT_WIDTH + 
                                                      CALC_ERROR_WIDTH)-1); 
                                                      
      
      sig_fifo_next_cmd_cmplt <=  sig_aq_fifo_data_out((C_ADDR_WIDTH  +
                                                      C_TAG_WIDTH     +
                                                      LEN_WIDTH       +
                                                      SIZE_WIDTH      +
                                                      BURST_WIDTH     +
                                                      CMD_CMPLT_WIDTH)-1); 
                                                      
      
      
      
      
      sig_fifo_next_burst     <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH     +
                                                       SIZE_WIDTH    +
                                                       BURST_WIDTH)-1 
                                              downto 
                                                       C_ADDR_WIDTH  +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH     +
                                                       SIZE_WIDTH) ;
                                                        
      sig_fifo_next_size      <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH     +
                                                       SIZE_WIDTH)-1
                                              downto 
                                                       C_ADDR_WIDTH  +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH) ; 
                                                       
      sig_fifo_next_len       <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH)-1 
                                              downto 
                                                      C_ADDR_WIDTH   +
                                                      C_TAG_WIDTH) ;
                                                       
      sig_fifo_next_addr      <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH)-1 
                                              downto 
                                                       C_TAG_WIDTH) ;
       
      sig_fifo_next_tag       <=  sig_aq_fifo_data_out(C_TAG_WIDTH-1 downto 0); 
    
    
    
      ------------------------------------------------------------
      -- Instance: I_ADDR_QUAL_FIFO 
      --
      -- Description:
      -- Instance for the Address/Qualifier FIFO
      --
      ------------------------------------------------------------
       I_ADDR_QUAL_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
       generic map (
     
         C_DWIDTH            =>  ADDR_QUAL_WIDTH         ,  
         C_DEPTH             =>  C_ADDR_FIFO_DEPTH       ,  
         C_IS_ASYNC          =>  USE_SYNC_FIFO           ,  
         C_PRIM_TYPE         =>  FIFO_PRIM_TYPE          ,  
         C_FAMILY            =>  C_FAMILY                   
        
         )
       port map (
         
         -- Write Clock and reset
         fifo_wr_reset        =>   mmap_reset            ,  
         fifo_wr_clk          =>   primary_aclk          ,  
         
         -- Write Side
         fifo_wr_tvalid       =>   sig_fifo_wr_cmd_valid ,  
         fifo_wr_tready       =>   sig_fifo_wr_cmd_ready ,  
         fifo_wr_tdata        =>   sig_aq_fifo_data_in   ,  
         fifo_wr_full         =>   open                  ,  
        
        
         -- Read Clock and reset
         fifo_async_rd_reset  =>   mmap_reset            ,     
         fifo_async_rd_clk    =>   primary_aclk          ,   
         
         -- Read Side
         fifo_rd_tvalid       =>   sig_fifo_rd_cmd_valid ,  
         fifo_rd_tready       =>   sig_fifo_rd_cmd_ready ,  
         fifo_rd_tdata        =>   sig_aq_fifo_data_out  ,  
         fifo_rd_empty        =>   sig_cmd_fifo_empty       
        
         );
     
    
    
    end generate GEN_ADDR_FIFO;
     
 
  
  
  
  
  
  
  
  

  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_NO_ADDR_FIFO
  --
  -- If Generate Description:
  --   Implements the case where no additional FIFOing is needed
  -- on the input command address/qualifiers.
  --
  ------------------------------------------------------------
  GEN_NO_ADDR_FIFO : if (C_ADDR_FIFO_DEPTH = 1) generate

    begin

      -- Bypass FIFO
      sig_fifo_next_tag       <=  mstr2addr_tag         ; 
      sig_fifo_next_addr      <=  mstr2addr_addr        ; 
      sig_fifo_next_len       <=  mstr2addr_len         ; 
      sig_fifo_next_size      <=  mstr2addr_size        ; 
      sig_fifo_next_burst     <=  mstr2addr_burst       ; 
      sig_fifo_next_cmd_cmplt <=  mstr2addr_cmd_cmplt   ;
      sig_fifo_calc_error     <=  mstr2addr_calc_error  ; 
      sig_cmd_fifo_empty      <=  sig_addr_reg_empty    ;
      sig_fifo_wr_cmd_ready   <=  sig_fifo_rd_cmd_ready ;
      sig_fifo_rd_cmd_valid   <=  sig_fifo_wr_cmd_valid ;
      
    
    end generate GEN_NO_ADDR_FIFO;
     
 
  
  
  
  
  
  
  -- Output Register Logic ------------------------------------------- 
  
  sig_axi_addr           <= sig_next_addr_reg  ;
  sig_axi_alen           <= sig_next_len_reg   ;
  sig_axi_asize          <= sig_next_size_reg  ;
  sig_axi_aburst         <= sig_next_burst_reg ;
  
  sig_axi_arvalid        <= sig_rd_addr_valid_reg ;
  sig_axi_awvalid        <= sig_wr_addr_valid_reg ;
  
  sig_calc_error         <= sig_calc_error_reg ;
  
  sig_fifo_rd_cmd_ready  <= sig_addr_reg_empty  and
                            sig_allow_addr_req  and   
                            not(data2addr_stop_req);
  
  sig_addr_posted        <= sig_posted_to_axi  ;
  
  
  -- Internal signals
  sig_push_addr_reg      <= sig_addr_reg_empty     and 
                            sig_fifo_rd_cmd_valid  and
                            sig_allow_addr_req     and   
                            not(data2addr_stop_req);
  
  sig_pop_addr_reg       <= not(sig_calc_error_reg) and 
                            sig_axi_aready          and 
                            sig_addr_reg_full;
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_ADDR_FIFO_REG
  --
  -- Process Description:
  --    This process implements a register for the Address 
  -- Control FIFO that operates like a 1 deep Sync FIFO.
  --
  -------------------------------------------------------------
  IMP_ADDR_FIFO_REG : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset       = '1' or
              sig_pop_addr_reg = '1') then
            
            sig_next_tag_reg        <= (others => '0')         ;
            sig_next_addr_reg       <= (others => '0')         ;
            sig_next_len_reg        <= (others => '0')         ;
            sig_next_size_reg       <= (others => '0')         ;
            sig_next_burst_reg      <= (others => '0')         ;
            sig_next_cmd_cmplt_reg  <= '0'                     ;
            
            sig_rd_addr_valid_reg   <= '0'                     ;
            sig_wr_addr_valid_reg   <= '0'                     ;
            
            sig_calc_error_reg      <= '0'                     ;
                                                               
            sig_addr_reg_empty      <= '1'                     ;
            sig_addr_reg_full       <= '0'                     ;
            
          elsif (sig_push_addr_reg = '1') then
            
            sig_next_tag_reg        <= sig_fifo_next_tag            ;
            sig_next_addr_reg       <= sig_fifo_next_addr           ;
            sig_next_len_reg        <= sig_fifo_next_len            ;
            sig_next_size_reg       <= sig_fifo_next_size           ;
            sig_next_burst_reg      <= sig_fifo_next_burst          ;
            sig_next_cmd_cmplt_reg  <= sig_fifo_next_cmd_cmplt      ;
            
            sig_rd_addr_valid_reg   <= not(sig_fifo_calc_error) and
                                       doing_read                   ;
            sig_wr_addr_valid_reg   <= not(sig_fifo_calc_error) and
                                       doing_write                  ;
            
            sig_calc_error_reg      <= sig_fifo_calc_error          ;
            
            sig_addr_reg_empty      <= '0'                          ;
            sig_addr_reg_full       <= '1'                          ;
            
          else
            null;  -- don't change state
          end if; 
       end if;       
     end process IMP_ADDR_FIFO_REG; 
   

  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_POSTED_FLAG
  --
  -- Process Description:
  --   This implements a FLOP that creates a 1 clock wide pulse
  -- indicating a new address/qualifier set has been posted to
  -- the AXI Addres Channel outputs. This is used to synchronize 
  -- the Data Channel Controller.
  --
  -------------------------------------------------------------
  IMP_POSTED_FLAG : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset = '1') then

            sig_posted_to_axi   <= '0';
            sig_posted_to_axi_2 <= '0';
            
          elsif (sig_push_addr_reg = '1') then

            sig_posted_to_axi   <= '1';
            sig_posted_to_axi_2 <= '1';
            
          else
            
            sig_posted_to_axi   <= '0';
            sig_posted_to_axi_2 <= '0';
            
          end if; 
       end if;       
     end process IMP_POSTED_FLAG; 


  



  
  
  
  


end implementation;
