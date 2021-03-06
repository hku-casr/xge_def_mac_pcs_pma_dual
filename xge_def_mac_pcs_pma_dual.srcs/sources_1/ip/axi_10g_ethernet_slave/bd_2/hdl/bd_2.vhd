--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4.1 (lin64) Build 1431336 Fri Dec 11 14:52:39 MST 2015
--Date        : Thu Jun 23 15:35:57 2016
--Host        : americano01.eee.hku.hk running 64-bit CentOS release 6.7 (Final)
--Command     : generate_target bd_2.bd
--Design      : bd_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_2 is
  port (
    areset : in STD_LOGIC;
    areset_coreclk : in STD_LOGIC;
    coreclk : in STD_LOGIC;
    dclk : in STD_LOGIC;
    gtrxreset : in STD_LOGIC;
    gttxreset : in STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplllock : in STD_LOGIC;
    qplloutclk : in STD_LOGIC;
    qplloutrefclk : in STD_LOGIC;
    reset_counter_done : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_resetdone : out STD_LOGIC;
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_resetdone : out STD_LOGIC;
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    txn : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    txp : out STD_LOGIC;
    txuserrdy : in STD_LOGIC;
    txusrclk : in STD_LOGIC;
    txusrclk2 : in STD_LOGIC;
    xgmacint : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_2 : entity is "bd_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_2 : entity is "axi_10g_ethernet_slave.hwdef";
end bd_2;

architecture STRUCTURE of bd_2 is
  component bd_2_ten_gig_eth_mac_0 is
  port (
    tx_clk0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_axis_tvalid : in STD_LOGIC;
    tx_axis_tlast : in STD_LOGIC;
    tx_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tready : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_axis_tvalid : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    pause_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pause_req : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    xgmacint : out STD_LOGIC;
    tx_dcm_locked : in STD_LOGIC;
    xgmii_txd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk0 : in STD_LOGIC;
    rx_dcm_locked : in STD_LOGIC;
    xgmii_rxd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mdc : out STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC
  );
  end component bd_2_ten_gig_eth_mac_0;
  component bd_2_ten_gig_eth_pcs_pma_0 is
  port (
    rxrecclk_out : out STD_LOGIC;
    coreclk : in STD_LOGIC;
    dclk : in STD_LOGIC;
    txusrclk : in STD_LOGIC;
    txusrclk2 : in STD_LOGIC;
    areset : in STD_LOGIC;
    txoutclk : out STD_LOGIC;
    areset_coreclk : in STD_LOGIC;
    gttxreset : in STD_LOGIC;
    gtrxreset : in STD_LOGIC;
    txuserrdy : in STD_LOGIC;
    qplllock : in STD_LOGIC;
    qplloutclk : in STD_LOGIC;
    qplloutrefclk : in STD_LOGIC;
    reset_counter_done : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    sim_speedup_control : in STD_LOGIC;
    xgmii_txd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xgmii_rxd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mdc : in STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    prtad : in STD_LOGIC_VECTOR ( 4 downto 0 );
    core_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_resetdone : out STD_LOGIC;
    rx_resetdone : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    drp_req : out STD_LOGIC;
    drp_gnt : in STD_LOGIC;
    drp_den_o : out STD_LOGIC;
    drp_dwe_o : out STD_LOGIC;
    drp_daddr_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_di_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_drdy_o : out STD_LOGIC;
    drp_drpdo_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_den_i : in STD_LOGIC;
    drp_dwe_i : in STD_LOGIC;
    drp_daddr_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_di_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drp_drdy_i : in STD_LOGIC;
    drp_drpdo_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tx_disable : out STD_LOGIC;
    pma_pmd_type : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_2_ten_gig_eth_pcs_pma_0;
  component bd_2_prtad_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component bd_2_prtad_driver_0;
  component bd_2_dcm_locked_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_2_dcm_locked_driver_0;
  component bd_2_pma_pmd_type_driver_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component bd_2_pma_pmd_type_driver_0;
  signal areset_1 : STD_LOGIC;
  signal areset_coreclk_1 : STD_LOGIC;
  signal coreclk_1 : STD_LOGIC;
  signal dclk_1 : STD_LOGIC;
  signal dcm_locked_driver_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gtrxreset_1 : STD_LOGIC;
  signal gttxreset_1 : STD_LOGIC;
  signal pma_pmd_type_driver_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal prtad_driver_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal qplllock_1 : STD_LOGIC;
  signal qplloutclk_1 : STD_LOGIC;
  signal qplloutrefclk_1 : STD_LOGIC;
  signal reset_counter_done_1 : STD_LOGIC;
  signal rx_axis_aresetn_1 : STD_LOGIC;
  signal rxn_1 : STD_LOGIC;
  signal rxp_1 : STD_LOGIC;
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC;
  signal s_axi_1_ARVALID : STD_LOGIC;
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC;
  signal s_axi_1_AWVALID : STD_LOGIC;
  signal s_axi_1_BREADY : STD_LOGIC;
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC;
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC;
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC;
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC;
  signal s_axi_1_WVALID : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal s_axis_pause_1_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axis_pause_1_TVALID : STD_LOGIC;
  signal s_axis_tx_1_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s_axis_tx_1_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axis_tx_1_TLAST : STD_LOGIC;
  signal s_axis_tx_1_TREADY : STD_LOGIC;
  signal s_axis_tx_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axis_tx_1_TVALID : STD_LOGIC;
  signal signal_detect_1 : STD_LOGIC;
  signal sim_speedup_control_1 : STD_LOGIC;
  signal ten_gig_eth_mac_m_axis_rx_TDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ten_gig_eth_mac_m_axis_rx_TKEEP : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ten_gig_eth_mac_m_axis_rx_TLAST : STD_LOGIC;
  signal ten_gig_eth_mac_m_axis_rx_TUSER : STD_LOGIC;
  signal ten_gig_eth_mac_m_axis_rx_TVALID : STD_LOGIC;
  signal ten_gig_eth_mac_mdio_xgmac_MDC : STD_LOGIC;
  signal ten_gig_eth_mac_mdio_xgmac_MDIO_I : STD_LOGIC;
  signal ten_gig_eth_mac_mdio_xgmac_MDIO_O : STD_LOGIC;
  signal ten_gig_eth_mac_rx_statistics_valid : STD_LOGIC;
  signal ten_gig_eth_mac_rx_statistics_vector : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal ten_gig_eth_mac_tx_statistics_valid : STD_LOGIC;
  signal ten_gig_eth_mac_tx_statistics_vector : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal ten_gig_eth_mac_xgmacint : STD_LOGIC;
  signal ten_gig_eth_mac_xgmii_xgmac_RXC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ten_gig_eth_mac_xgmii_xgmac_RXD : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ten_gig_eth_mac_xgmii_xgmac_TXC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ten_gig_eth_mac_xgmii_xgmac_TXD : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ten_gig_eth_pcs_pma_core_gt_drp_interface_DADDR : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ten_gig_eth_pcs_pma_core_gt_drp_interface_DEN : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_core_gt_drp_interface_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ten_gig_eth_pcs_pma_core_gt_drp_interface_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ten_gig_eth_pcs_pma_core_gt_drp_interface_DRDY : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_core_gt_drp_interface_DWE : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_core_status : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ten_gig_eth_pcs_pma_drp_req : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_rx_resetdone : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_rxrecclk_out : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_tx_disable : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_tx_resetdone : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_txn : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_txoutclk : STD_LOGIC;
  signal ten_gig_eth_pcs_pma_txp : STD_LOGIC;
  signal tx_axis_aresetn_1 : STD_LOGIC;
  signal tx_fault_1 : STD_LOGIC;
  signal tx_ifg_delay_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txuserrdy_1 : STD_LOGIC;
  signal txusrclk2_1 : STD_LOGIC;
  signal txusrclk_1 : STD_LOGIC;
  signal NLW_ten_gig_eth_mac_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_ten_gig_eth_pcs_pma_mdio_tri_UNCONNECTED : STD_LOGIC;
begin
  areset_1 <= areset;
  areset_coreclk_1 <= areset_coreclk;
  coreclk_1 <= coreclk;
  dclk_1 <= dclk;
  gtrxreset_1 <= gtrxreset;
  gttxreset_1 <= gttxreset;
  m_axis_rx_tdata(63 downto 0) <= ten_gig_eth_mac_m_axis_rx_TDATA(63 downto 0);
  m_axis_rx_tkeep(7 downto 0) <= ten_gig_eth_mac_m_axis_rx_TKEEP(7 downto 0);
  m_axis_rx_tlast <= ten_gig_eth_mac_m_axis_rx_TLAST;
  m_axis_rx_tuser <= ten_gig_eth_mac_m_axis_rx_TUSER;
  m_axis_rx_tvalid <= ten_gig_eth_mac_m_axis_rx_TVALID;
  pcspma_status(7 downto 0) <= ten_gig_eth_pcs_pma_core_status(7 downto 0);
  qplllock_1 <= qplllock;
  qplloutclk_1 <= qplloutclk;
  qplloutrefclk_1 <= qplloutrefclk;
  reset_counter_done_1 <= reset_counter_done;
  rx_axis_aresetn_1 <= rx_axis_aresetn;
  rx_resetdone <= ten_gig_eth_pcs_pma_rx_resetdone;
  rx_statistics_valid <= ten_gig_eth_mac_rx_statistics_valid;
  rx_statistics_vector(29 downto 0) <= ten_gig_eth_mac_rx_statistics_vector(29 downto 0);
  rxn_1 <= rxn;
  rxp_1 <= rxp;
  rxrecclk_out <= ten_gig_eth_pcs_pma_rxrecclk_out;
  s_axi_1_ARADDR(10 downto 0) <= s_axi_araddr(10 downto 0);
  s_axi_1_ARVALID <= s_axi_arvalid;
  s_axi_1_AWADDR(10 downto 0) <= s_axi_awaddr(10 downto 0);
  s_axi_1_AWVALID <= s_axi_awvalid;
  s_axi_1_BREADY <= s_axi_bready;
  s_axi_1_RREADY <= s_axi_rready;
  s_axi_1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  s_axi_1_WVALID <= s_axi_wvalid;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
  s_axi_arready <= s_axi_1_ARREADY;
  s_axi_awready <= s_axi_1_AWREADY;
  s_axi_bresp(1 downto 0) <= s_axi_1_BRESP(1 downto 0);
  s_axi_bvalid <= s_axi_1_BVALID;
  s_axi_rdata(31 downto 0) <= s_axi_1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= s_axi_1_RRESP(1 downto 0);
  s_axi_rvalid <= s_axi_1_RVALID;
  s_axi_wready <= s_axi_1_WREADY;
  s_axis_pause_1_TDATA(15 downto 0) <= s_axis_pause_tdata(15 downto 0);
  s_axis_pause_1_TVALID <= s_axis_pause_tvalid;
  s_axis_tx_1_TDATA(63 downto 0) <= s_axis_tx_tdata(63 downto 0);
  s_axis_tx_1_TKEEP(7 downto 0) <= s_axis_tx_tkeep(7 downto 0);
  s_axis_tx_1_TLAST <= s_axis_tx_tlast;
  s_axis_tx_1_TUSER(0) <= s_axis_tx_tuser(0);
  s_axis_tx_1_TVALID <= s_axis_tx_tvalid;
  s_axis_tx_tready <= s_axis_tx_1_TREADY;
  signal_detect_1 <= signal_detect;
  sim_speedup_control_1 <= sim_speedup_control;
  tx_axis_aresetn_1 <= tx_axis_aresetn;
  tx_disable <= ten_gig_eth_pcs_pma_tx_disable;
  tx_fault_1 <= tx_fault;
  tx_ifg_delay_1(7 downto 0) <= tx_ifg_delay(7 downto 0);
  tx_resetdone <= ten_gig_eth_pcs_pma_tx_resetdone;
  tx_statistics_valid <= ten_gig_eth_mac_tx_statistics_valid;
  tx_statistics_vector(25 downto 0) <= ten_gig_eth_mac_tx_statistics_vector(25 downto 0);
  txn <= ten_gig_eth_pcs_pma_txn;
  txoutclk <= ten_gig_eth_pcs_pma_txoutclk;
  txp <= ten_gig_eth_pcs_pma_txp;
  txuserrdy_1 <= txuserrdy;
  txusrclk2_1 <= txusrclk2;
  txusrclk_1 <= txusrclk;
  xgmacint <= ten_gig_eth_mac_xgmacint;
dcm_locked_driver: component bd_2_dcm_locked_driver_0
     port map (
      dout(0) => dcm_locked_driver_dout(0)
    );
pma_pmd_type_driver: component bd_2_pma_pmd_type_driver_0
     port map (
      dout(2 downto 0) => pma_pmd_type_driver_dout(2 downto 0)
    );
prtad_driver: component bd_2_prtad_driver_0
     port map (
      dout(4 downto 0) => prtad_driver_dout(4 downto 0)
    );
ten_gig_eth_mac: component bd_2_ten_gig_eth_mac_0
     port map (
      mdc => ten_gig_eth_mac_mdio_xgmac_MDC,
      mdio_in => ten_gig_eth_mac_mdio_xgmac_MDIO_I,
      mdio_out => ten_gig_eth_mac_mdio_xgmac_MDIO_O,
      mdio_tri => NLW_ten_gig_eth_mac_mdio_tri_UNCONNECTED,
      pause_req => s_axis_pause_1_TVALID,
      pause_val(15 downto 0) => s_axis_pause_1_TDATA(15 downto 0),
      reset => areset_1,
      rx_axis_aresetn => rx_axis_aresetn_1,
      rx_axis_tdata(63 downto 0) => ten_gig_eth_mac_m_axis_rx_TDATA(63 downto 0),
      rx_axis_tkeep(7 downto 0) => ten_gig_eth_mac_m_axis_rx_TKEEP(7 downto 0),
      rx_axis_tlast => ten_gig_eth_mac_m_axis_rx_TLAST,
      rx_axis_tuser => ten_gig_eth_mac_m_axis_rx_TUSER,
      rx_axis_tvalid => ten_gig_eth_mac_m_axis_rx_TVALID,
      rx_clk0 => coreclk_1,
      rx_dcm_locked => dcm_locked_driver_dout(0),
      rx_statistics_valid => ten_gig_eth_mac_rx_statistics_valid,
      rx_statistics_vector(29 downto 0) => ten_gig_eth_mac_rx_statistics_vector(29 downto 0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(10 downto 0) => s_axi_1_ARADDR(10 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => s_axi_1_ARREADY,
      s_axi_arvalid => s_axi_1_ARVALID,
      s_axi_awaddr(10 downto 0) => s_axi_1_AWADDR(10 downto 0),
      s_axi_awready => s_axi_1_AWREADY,
      s_axi_awvalid => s_axi_1_AWVALID,
      s_axi_bready => s_axi_1_BREADY,
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid => s_axi_1_BVALID,
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready => s_axi_1_RREADY,
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid => s_axi_1_RVALID,
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready => s_axi_1_WREADY,
      s_axi_wvalid => s_axi_1_WVALID,
      tx_axis_aresetn => tx_axis_aresetn_1,
      tx_axis_tdata(63 downto 0) => s_axis_tx_1_TDATA(63 downto 0),
      tx_axis_tkeep(7 downto 0) => s_axis_tx_1_TKEEP(7 downto 0),
      tx_axis_tlast => s_axis_tx_1_TLAST,
      tx_axis_tready => s_axis_tx_1_TREADY,
      tx_axis_tuser(0) => s_axis_tx_1_TUSER(0),
      tx_axis_tvalid => s_axis_tx_1_TVALID,
      tx_clk0 => coreclk_1,
      tx_dcm_locked => dcm_locked_driver_dout(0),
      tx_ifg_delay(7 downto 0) => tx_ifg_delay_1(7 downto 0),
      tx_statistics_valid => ten_gig_eth_mac_tx_statistics_valid,
      tx_statistics_vector(25 downto 0) => ten_gig_eth_mac_tx_statistics_vector(25 downto 0),
      xgmacint => ten_gig_eth_mac_xgmacint,
      xgmii_rxc(7 downto 0) => ten_gig_eth_mac_xgmii_xgmac_RXC(7 downto 0),
      xgmii_rxd(63 downto 0) => ten_gig_eth_mac_xgmii_xgmac_RXD(63 downto 0),
      xgmii_txc(7 downto 0) => ten_gig_eth_mac_xgmii_xgmac_TXC(7 downto 0),
      xgmii_txd(63 downto 0) => ten_gig_eth_mac_xgmii_xgmac_TXD(63 downto 0)
    );
ten_gig_eth_pcs_pma: component bd_2_ten_gig_eth_pcs_pma_0
     port map (
      areset => areset_1,
      areset_coreclk => areset_coreclk_1,
      core_status(7 downto 0) => ten_gig_eth_pcs_pma_core_status(7 downto 0),
      coreclk => coreclk_1,
      dclk => dclk_1,
      drp_daddr_i(15 downto 0) => ten_gig_eth_pcs_pma_core_gt_drp_interface_DADDR(15 downto 0),
      drp_daddr_o(15 downto 0) => ten_gig_eth_pcs_pma_core_gt_drp_interface_DADDR(15 downto 0),
      drp_den_i => ten_gig_eth_pcs_pma_core_gt_drp_interface_DEN,
      drp_den_o => ten_gig_eth_pcs_pma_core_gt_drp_interface_DEN,
      drp_di_i(15 downto 0) => ten_gig_eth_pcs_pma_core_gt_drp_interface_DI(15 downto 0),
      drp_di_o(15 downto 0) => ten_gig_eth_pcs_pma_core_gt_drp_interface_DI(15 downto 0),
      drp_drdy_i => ten_gig_eth_pcs_pma_core_gt_drp_interface_DRDY,
      drp_drdy_o => ten_gig_eth_pcs_pma_core_gt_drp_interface_DRDY,
      drp_drpdo_i(15 downto 0) => ten_gig_eth_pcs_pma_core_gt_drp_interface_DO(15 downto 0),
      drp_drpdo_o(15 downto 0) => ten_gig_eth_pcs_pma_core_gt_drp_interface_DO(15 downto 0),
      drp_dwe_i => ten_gig_eth_pcs_pma_core_gt_drp_interface_DWE,
      drp_dwe_o => ten_gig_eth_pcs_pma_core_gt_drp_interface_DWE,
      drp_gnt => ten_gig_eth_pcs_pma_drp_req,
      drp_req => ten_gig_eth_pcs_pma_drp_req,
      gtrxreset => gtrxreset_1,
      gttxreset => gttxreset_1,
      mdc => ten_gig_eth_mac_mdio_xgmac_MDC,
      mdio_in => ten_gig_eth_mac_mdio_xgmac_MDIO_O,
      mdio_out => ten_gig_eth_mac_mdio_xgmac_MDIO_I,
      mdio_tri => NLW_ten_gig_eth_pcs_pma_mdio_tri_UNCONNECTED,
      pma_pmd_type(2 downto 0) => pma_pmd_type_driver_dout(2 downto 0),
      prtad(4 downto 0) => prtad_driver_dout(4 downto 0),
      qplllock => qplllock_1,
      qplloutclk => qplloutclk_1,
      qplloutrefclk => qplloutrefclk_1,
      reset_counter_done => reset_counter_done_1,
      rx_resetdone => ten_gig_eth_pcs_pma_rx_resetdone,
      rxn => rxn_1,
      rxp => rxp_1,
      rxrecclk_out => ten_gig_eth_pcs_pma_rxrecclk_out,
      signal_detect => signal_detect_1,
      sim_speedup_control => sim_speedup_control_1,
      tx_disable => ten_gig_eth_pcs_pma_tx_disable,
      tx_fault => tx_fault_1,
      tx_resetdone => ten_gig_eth_pcs_pma_tx_resetdone,
      txn => ten_gig_eth_pcs_pma_txn,
      txoutclk => ten_gig_eth_pcs_pma_txoutclk,
      txp => ten_gig_eth_pcs_pma_txp,
      txuserrdy => txuserrdy_1,
      txusrclk => txusrclk_1,
      txusrclk2 => txusrclk2_1,
      xgmii_rxc(7 downto 0) => ten_gig_eth_mac_xgmii_xgmac_RXC(7 downto 0),
      xgmii_rxd(63 downto 0) => ten_gig_eth_mac_xgmii_xgmac_RXD(63 downto 0),
      xgmii_txc(7 downto 0) => ten_gig_eth_mac_xgmii_xgmac_TXC(7 downto 0),
      xgmii_txd(63 downto 0) => ten_gig_eth_mac_xgmii_xgmac_TXD(63 downto 0)
    );
end STRUCTURE;
