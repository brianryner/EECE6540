// ddr_board_altera_mm_interconnect_191_g4uwyui.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module ddr_board_altera_mm_interconnect_191_g4uwyui (
		input  wire [31:0]  ddr_board_acl_memory_bank_divider_0_bank2_address,                     //                       ddr_board_acl_memory_bank_divider_0_bank2.address
		output wire         ddr_board_acl_memory_bank_divider_0_bank2_waitrequest,                 //                                                                .waitrequest
		input  wire [4:0]   ddr_board_acl_memory_bank_divider_0_bank2_burstcount,                  //                                                                .burstcount
		input  wire [63:0]  ddr_board_acl_memory_bank_divider_0_bank2_byteenable,                  //                                                                .byteenable
		input  wire         ddr_board_acl_memory_bank_divider_0_bank2_read,                        //                                                                .read
		output wire [511:0] ddr_board_acl_memory_bank_divider_0_bank2_readdata,                    //                                                                .readdata
		output wire         ddr_board_acl_memory_bank_divider_0_bank2_readdatavalid,               //                                                                .readdatavalid
		input  wire         ddr_board_acl_memory_bank_divider_0_bank2_write,                       //                                                                .write
		input  wire [511:0] ddr_board_acl_memory_bank_divider_0_bank2_writedata,                   //                                                                .writedata
		output wire [31:0]  ddr4b_cross_to_host_s0_address,                                        //                                          ddr4b_cross_to_host_s0.address
		output wire         ddr4b_cross_to_host_s0_write,                                          //                                                                .write
		output wire         ddr4b_cross_to_host_s0_read,                                           //                                                                .read
		input  wire [511:0] ddr4b_cross_to_host_s0_readdata,                                       //                                                                .readdata
		output wire [511:0] ddr4b_cross_to_host_s0_writedata,                                      //                                                                .writedata
		output wire [4:0]   ddr4b_cross_to_host_s0_burstcount,                                     //                                                                .burstcount
		output wire [63:0]  ddr4b_cross_to_host_s0_byteenable,                                     //                                                                .byteenable
		input  wire         ddr4b_cross_to_host_s0_readdatavalid,                                  //                                                                .readdatavalid
		input  wire         ddr4b_cross_to_host_s0_waitrequest,                                    //                                                                .waitrequest
		output wire         ddr4b_cross_to_host_s0_debugaccess,                                    //                                                                .debugaccess
		input  wire         ddr_board_acl_memory_bank_divider_0_reset_reset_bridge_in_reset_reset, // ddr_board_acl_memory_bank_divider_0_reset_reset_bridge_in_reset.reset
		input  wire         host_clk_out_clk_clk                                                   //                                                host_clk_out_clk.clk
	);

	wire          ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_waitrequest;   // ddr4b_cross_to_host_s0_translator:uav_waitrequest -> ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_waitrequest
	wire  [511:0] ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_readdata;      // ddr4b_cross_to_host_s0_translator:uav_readdata -> ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_readdata
	wire          ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_debugaccess;   // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_debugaccess -> ddr4b_cross_to_host_s0_translator:uav_debugaccess
	wire   [31:0] ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_address;       // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_address -> ddr4b_cross_to_host_s0_translator:uav_address
	wire          ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_read;          // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_read -> ddr4b_cross_to_host_s0_translator:uav_read
	wire   [63:0] ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_byteenable;    // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_byteenable -> ddr4b_cross_to_host_s0_translator:uav_byteenable
	wire          ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_readdatavalid; // ddr4b_cross_to_host_s0_translator:uav_readdatavalid -> ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_readdatavalid
	wire          ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_lock;          // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_lock -> ddr4b_cross_to_host_s0_translator:uav_lock
	wire          ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_write;         // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_write -> ddr4b_cross_to_host_s0_translator:uav_write
	wire  [511:0] ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_writedata;     // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_writedata -> ddr4b_cross_to_host_s0_translator:uav_writedata
	wire   [10:0] ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_burstcount;    // ddr_board_acl_memory_bank_divider_0_bank2_translator:uav_burstcount -> ddr4b_cross_to_host_s0_translator:uav_burstcount

	ddr_board_altera_merlin_master_translator_191_g7h47bq #(
		.AV_ADDRESS_W                (32),
		.AV_DATA_W                   (512),
		.AV_BURSTCOUNT_W             (5),
		.AV_BYTEENABLE_W             (64),
		.UAV_ADDRESS_W               (32),
		.UAV_BURSTCOUNT_W            (11),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (1),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (64),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (1),
		.UAV_CONSTANT_BURST_BEHAVIOR (1),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0),
		.SYNC_RESET                  (0),
		.WAITREQUEST_ALLOWANCE       (0)
	) ddr_board_acl_memory_bank_divider_0_bank2_translator (
		.clk                    (host_clk_out_clk_clk),                                                                         //   input,    width = 1,                       clk.clk
		.reset                  (ddr_board_acl_memory_bank_divider_0_reset_reset_bridge_in_reset_reset),                        //   input,    width = 1,                     reset.reset
		.uav_address            (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_address),       //  output,   width = 32, avalon_universal_master_0.address
		.uav_burstcount         (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_burstcount),    //  output,   width = 11,                          .burstcount
		.uav_read               (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_read),          //  output,    width = 1,                          .read
		.uav_write              (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_write),         //  output,    width = 1,                          .write
		.uav_waitrequest        (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_waitrequest),   //   input,    width = 1,                          .waitrequest
		.uav_readdatavalid      (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_readdatavalid), //   input,    width = 1,                          .readdatavalid
		.uav_byteenable         (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_byteenable),    //  output,   width = 64,                          .byteenable
		.uav_readdata           (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_readdata),      //   input,  width = 512,                          .readdata
		.uav_writedata          (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_writedata),     //  output,  width = 512,                          .writedata
		.uav_lock               (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_lock),          //  output,    width = 1,                          .lock
		.uav_debugaccess        (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_debugaccess),   //  output,    width = 1,                          .debugaccess
		.av_address             (ddr_board_acl_memory_bank_divider_0_bank2_address),                                            //   input,   width = 32,      avalon_anti_master_0.address
		.av_waitrequest         (ddr_board_acl_memory_bank_divider_0_bank2_waitrequest),                                        //  output,    width = 1,                          .waitrequest
		.av_burstcount          (ddr_board_acl_memory_bank_divider_0_bank2_burstcount),                                         //   input,    width = 5,                          .burstcount
		.av_byteenable          (ddr_board_acl_memory_bank_divider_0_bank2_byteenable),                                         //   input,   width = 64,                          .byteenable
		.av_read                (ddr_board_acl_memory_bank_divider_0_bank2_read),                                               //   input,    width = 1,                          .read
		.av_readdata            (ddr_board_acl_memory_bank_divider_0_bank2_readdata),                                           //  output,  width = 512,                          .readdata
		.av_readdatavalid       (ddr_board_acl_memory_bank_divider_0_bank2_readdatavalid),                                      //  output,    width = 1,                          .readdatavalid
		.av_write               (ddr_board_acl_memory_bank_divider_0_bank2_write),                                              //   input,    width = 1,                          .write
		.av_writedata           (ddr_board_acl_memory_bank_divider_0_bank2_writedata),                                          //   input,  width = 512,                          .writedata
		.av_beginbursttransfer  (1'b0),                                                                                         // (terminated),                                         
		.av_begintransfer       (1'b0),                                                                                         // (terminated),                                         
		.av_chipselect          (1'b0),                                                                                         // (terminated),                                         
		.av_lock                (1'b0),                                                                                         // (terminated),                                         
		.av_debugaccess         (1'b0),                                                                                         // (terminated),                                         
		.uav_clken              (),                                                                                             // (terminated),                                         
		.av_clken               (1'b1),                                                                                         // (terminated),                                         
		.uav_response           (2'b00),                                                                                        // (terminated),                                         
		.av_response            (),                                                                                             // (terminated),                                         
		.uav_writeresponsevalid (1'b0),                                                                                         // (terminated),                                         
		.av_writeresponsevalid  ()                                                                                              // (terminated),                                         
	);

	ddr_board_altera_merlin_slave_translator_191_x56fcki #(
		.AV_ADDRESS_W                   (32),
		.AV_DATA_W                      (512),
		.UAV_DATA_W                     (512),
		.AV_BURSTCOUNT_W                (5),
		.AV_BYTEENABLE_W                (64),
		.UAV_BYTEENABLE_W               (64),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (11),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (1),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (64),
		.AV_ADDRESS_SYMBOLS             (1),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0),
		.WAITREQUEST_ALLOWANCE          (0),
		.SYNC_RESET                     (0)
	) ddr4b_cross_to_host_s0_translator (
		.clk                    (host_clk_out_clk_clk),                                                                         //   input,    width = 1,                      clk.clk
		.reset                  (ddr_board_acl_memory_bank_divider_0_reset_reset_bridge_in_reset_reset),                        //   input,    width = 1,                    reset.reset
		.uav_address            (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_address),       //   input,   width = 32, avalon_universal_slave_0.address
		.uav_burstcount         (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_burstcount),    //   input,   width = 11,                         .burstcount
		.uav_read               (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_read),          //   input,    width = 1,                         .read
		.uav_write              (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_write),         //   input,    width = 1,                         .write
		.uav_waitrequest        (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_waitrequest),   //  output,    width = 1,                         .waitrequest
		.uav_readdatavalid      (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_readdatavalid), //  output,    width = 1,                         .readdatavalid
		.uav_byteenable         (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_byteenable),    //   input,   width = 64,                         .byteenable
		.uav_readdata           (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_readdata),      //  output,  width = 512,                         .readdata
		.uav_writedata          (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_writedata),     //   input,  width = 512,                         .writedata
		.uav_lock               (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_lock),          //   input,    width = 1,                         .lock
		.uav_debugaccess        (ddr_board_acl_memory_bank_divider_0_bank2_translator_avalon_universal_master_0_debugaccess),   //   input,    width = 1,                         .debugaccess
		.av_address             (ddr4b_cross_to_host_s0_address),                                                               //  output,   width = 32,      avalon_anti_slave_0.address
		.av_write               (ddr4b_cross_to_host_s0_write),                                                                 //  output,    width = 1,                         .write
		.av_read                (ddr4b_cross_to_host_s0_read),                                                                  //  output,    width = 1,                         .read
		.av_readdata            (ddr4b_cross_to_host_s0_readdata),                                                              //   input,  width = 512,                         .readdata
		.av_writedata           (ddr4b_cross_to_host_s0_writedata),                                                             //  output,  width = 512,                         .writedata
		.av_burstcount          (ddr4b_cross_to_host_s0_burstcount),                                                            //  output,    width = 5,                         .burstcount
		.av_byteenable          (ddr4b_cross_to_host_s0_byteenable),                                                            //  output,   width = 64,                         .byteenable
		.av_readdatavalid       (ddr4b_cross_to_host_s0_readdatavalid),                                                         //   input,    width = 1,                         .readdatavalid
		.av_waitrequest         (ddr4b_cross_to_host_s0_waitrequest),                                                           //   input,    width = 1,                         .waitrequest
		.av_debugaccess         (ddr4b_cross_to_host_s0_debugaccess),                                                           //  output,    width = 1,                         .debugaccess
		.av_begintransfer       (),                                                                                             // (terminated),                                        
		.av_beginbursttransfer  (),                                                                                             // (terminated),                                        
		.av_writebyteenable     (),                                                                                             // (terminated),                                        
		.av_lock                (),                                                                                             // (terminated),                                        
		.av_chipselect          (),                                                                                             // (terminated),                                        
		.av_clken               (),                                                                                             // (terminated),                                        
		.uav_clken              (1'b0),                                                                                         // (terminated),                                        
		.av_outputenable        (),                                                                                             // (terminated),                                        
		.uav_response           (),                                                                                             // (terminated),                                        
		.av_response            (2'b00),                                                                                        // (terminated),                                        
		.uav_writeresponsevalid (),                                                                                             // (terminated),                                        
		.av_writeresponsevalid  (1'b0)                                                                                          // (terminated),                                        
	);

endmodule
