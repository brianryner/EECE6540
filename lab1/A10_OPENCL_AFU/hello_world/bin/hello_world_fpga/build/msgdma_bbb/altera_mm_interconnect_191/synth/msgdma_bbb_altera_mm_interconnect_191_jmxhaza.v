// msgdma_bbb_altera_mm_interconnect_191_jmxhaza.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module msgdma_bbb_altera_mm_interconnect_191_jmxhaza (
		input  wire [49:0]  dma_read_master_Data_Read_Master_address,              //                dma_read_master_Data_Read_Master.address
		output wire         dma_read_master_Data_Read_Master_waitrequest,          //                                                .waitrequest
		input  wire [2:0]   dma_read_master_Data_Read_Master_burstcount,           //                                                .burstcount
		input  wire [63:0]  dma_read_master_Data_Read_Master_byteenable,           //                                                .byteenable
		input  wire         dma_read_master_Data_Read_Master_read,                 //                                                .read
		output wire [511:0] dma_read_master_Data_Read_Master_readdata,             //                                                .readdata
		output wire         dma_read_master_Data_Read_Master_readdatavalid,        //                                                .readdatavalid
		output wire [49:0]  pipe_stage_dma_read_s0_address,                        //                          pipe_stage_dma_read_s0.address
		output wire         pipe_stage_dma_read_s0_write,                          //                                                .write
		output wire         pipe_stage_dma_read_s0_read,                           //                                                .read
		input  wire [511:0] pipe_stage_dma_read_s0_readdata,                       //                                                .readdata
		output wire [511:0] pipe_stage_dma_read_s0_writedata,                      //                                                .writedata
		output wire [2:0]   pipe_stage_dma_read_s0_burstcount,                     //                                                .burstcount
		output wire [63:0]  pipe_stage_dma_read_s0_byteenable,                     //                                                .byteenable
		input  wire         pipe_stage_dma_read_s0_readdatavalid,                  //                                                .readdatavalid
		input  wire         pipe_stage_dma_read_s0_waitrequest,                    //                                                .waitrequest
		output wire         pipe_stage_dma_read_s0_debugaccess,                    //                                                .debugaccess
		input  wire         pipe_stage_dma_read_reset_reset_bridge_in_reset_reset, // pipe_stage_dma_read_reset_reset_bridge_in_reset.reset
		input  wire         clk_clk_clk                                            //                                         clk_clk.clk
	);

	wire          dma_read_master_data_read_master_translator_avalon_universal_master_0_waitrequest;   // pipe_stage_dma_read_s0_translator:uav_waitrequest -> dma_read_master_Data_Read_Master_translator:uav_waitrequest
	wire  [511:0] dma_read_master_data_read_master_translator_avalon_universal_master_0_readdata;      // pipe_stage_dma_read_s0_translator:uav_readdata -> dma_read_master_Data_Read_Master_translator:uav_readdata
	wire          dma_read_master_data_read_master_translator_avalon_universal_master_0_debugaccess;   // dma_read_master_Data_Read_Master_translator:uav_debugaccess -> pipe_stage_dma_read_s0_translator:uav_debugaccess
	wire   [49:0] dma_read_master_data_read_master_translator_avalon_universal_master_0_address;       // dma_read_master_Data_Read_Master_translator:uav_address -> pipe_stage_dma_read_s0_translator:uav_address
	wire          dma_read_master_data_read_master_translator_avalon_universal_master_0_read;          // dma_read_master_Data_Read_Master_translator:uav_read -> pipe_stage_dma_read_s0_translator:uav_read
	wire   [63:0] dma_read_master_data_read_master_translator_avalon_universal_master_0_byteenable;    // dma_read_master_Data_Read_Master_translator:uav_byteenable -> pipe_stage_dma_read_s0_translator:uav_byteenable
	wire          dma_read_master_data_read_master_translator_avalon_universal_master_0_readdatavalid; // pipe_stage_dma_read_s0_translator:uav_readdatavalid -> dma_read_master_Data_Read_Master_translator:uav_readdatavalid
	wire          dma_read_master_data_read_master_translator_avalon_universal_master_0_lock;          // dma_read_master_Data_Read_Master_translator:uav_lock -> pipe_stage_dma_read_s0_translator:uav_lock
	wire          dma_read_master_data_read_master_translator_avalon_universal_master_0_write;         // dma_read_master_Data_Read_Master_translator:uav_write -> pipe_stage_dma_read_s0_translator:uav_write
	wire  [511:0] dma_read_master_data_read_master_translator_avalon_universal_master_0_writedata;     // dma_read_master_Data_Read_Master_translator:uav_writedata -> pipe_stage_dma_read_s0_translator:uav_writedata
	wire    [8:0] dma_read_master_data_read_master_translator_avalon_universal_master_0_burstcount;    // dma_read_master_Data_Read_Master_translator:uav_burstcount -> pipe_stage_dma_read_s0_translator:uav_burstcount

	msgdma_bbb_altera_merlin_master_translator_191_g7h47bq #(
		.AV_ADDRESS_W                (50),
		.AV_DATA_W                   (512),
		.AV_BURSTCOUNT_W             (3),
		.AV_BYTEENABLE_W             (64),
		.UAV_ADDRESS_W               (50),
		.UAV_BURSTCOUNT_W            (9),
		.USE_READ                    (1),
		.USE_WRITE                   (0),
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
	) dma_read_master_data_read_master_translator (
		.clk                    (clk_clk_clk),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           //   input,    width = 1,                       clk.clk
		.reset                  (pipe_stage_dma_read_reset_reset_bridge_in_reset_reset),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 //   input,    width = 1,                     reset.reset
		.uav_address            (dma_read_master_data_read_master_translator_avalon_universal_master_0_address),                                                                                                                                                                                                                                                                                                                                                                                                                                                         //  output,   width = 50, avalon_universal_master_0.address
		.uav_burstcount         (dma_read_master_data_read_master_translator_avalon_universal_master_0_burstcount),                                                                                                                                                                                                                                                                                                                                                                                                                                                      //  output,    width = 9,                          .burstcount
		.uav_read               (dma_read_master_data_read_master_translator_avalon_universal_master_0_read),                                                                                                                                                                                                                                                                                                                                                                                                                                                            //  output,    width = 1,                          .read
		.uav_write              (dma_read_master_data_read_master_translator_avalon_universal_master_0_write),                                                                                                                                                                                                                                                                                                                                                                                                                                                           //  output,    width = 1,                          .write
		.uav_waitrequest        (dma_read_master_data_read_master_translator_avalon_universal_master_0_waitrequest),                                                                                                                                                                                                                                                                                                                                                                                                                                                     //   input,    width = 1,                          .waitrequest
		.uav_readdatavalid      (dma_read_master_data_read_master_translator_avalon_universal_master_0_readdatavalid),                                                                                                                                                                                                                                                                                                                                                                                                                                                   //   input,    width = 1,                          .readdatavalid
		.uav_byteenable         (dma_read_master_data_read_master_translator_avalon_universal_master_0_byteenable),                                                                                                                                                                                                                                                                                                                                                                                                                                                      //  output,   width = 64,                          .byteenable
		.uav_readdata           (dma_read_master_data_read_master_translator_avalon_universal_master_0_readdata),                                                                                                                                                                                                                                                                                                                                                                                                                                                        //   input,  width = 512,                          .readdata
		.uav_writedata          (dma_read_master_data_read_master_translator_avalon_universal_master_0_writedata),                                                                                                                                                                                                                                                                                                                                                                                                                                                       //  output,  width = 512,                          .writedata
		.uav_lock               (dma_read_master_data_read_master_translator_avalon_universal_master_0_lock),                                                                                                                                                                                                                                                                                                                                                                                                                                                            //  output,    width = 1,                          .lock
		.uav_debugaccess        (dma_read_master_data_read_master_translator_avalon_universal_master_0_debugaccess),                                                                                                                                                                                                                                                                                                                                                                                                                                                     //  output,    width = 1,                          .debugaccess
		.av_address             (dma_read_master_Data_Read_Master_address),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              //   input,   width = 50,      avalon_anti_master_0.address
		.av_waitrequest         (dma_read_master_Data_Read_Master_waitrequest),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          //  output,    width = 1,                          .waitrequest
		.av_burstcount          (dma_read_master_Data_Read_Master_burstcount),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           //   input,    width = 3,                          .burstcount
		.av_byteenable          (dma_read_master_Data_Read_Master_byteenable),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           //   input,   width = 64,                          .byteenable
		.av_read                (dma_read_master_Data_Read_Master_read),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 //   input,    width = 1,                          .read
		.av_readdata            (dma_read_master_Data_Read_Master_readdata),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             //  output,  width = 512,                          .readdata
		.av_readdatavalid       (dma_read_master_Data_Read_Master_readdatavalid),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        //  output,    width = 1,                          .readdatavalid
		.av_beginbursttransfer  (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.av_begintransfer       (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.av_chipselect          (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.av_write               (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.av_writedata           (512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), // (terminated),                                         
		.av_lock                (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.av_debugaccess         (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.uav_clken              (),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      // (terminated),                                         
		.av_clken               (1'b1),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.uav_response           (2'b00),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 // (terminated),                                         
		.av_response            (),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      // (terminated),                                         
		.uav_writeresponsevalid (1'b0),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // (terminated),                                         
		.av_writeresponsevalid  ()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       // (terminated),                                         
	);

	msgdma_bbb_altera_merlin_slave_translator_191_x56fcki #(
		.AV_ADDRESS_W                   (50),
		.AV_DATA_W                      (512),
		.UAV_DATA_W                     (512),
		.AV_BURSTCOUNT_W                (3),
		.AV_BYTEENABLE_W                (64),
		.UAV_BYTEENABLE_W               (64),
		.UAV_ADDRESS_W                  (50),
		.UAV_BURSTCOUNT_W               (9),
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
	) pipe_stage_dma_read_s0_translator (
		.clk                    (clk_clk_clk),                                                                         //   input,    width = 1,                      clk.clk
		.reset                  (pipe_stage_dma_read_reset_reset_bridge_in_reset_reset),                               //   input,    width = 1,                    reset.reset
		.uav_address            (dma_read_master_data_read_master_translator_avalon_universal_master_0_address),       //   input,   width = 50, avalon_universal_slave_0.address
		.uav_burstcount         (dma_read_master_data_read_master_translator_avalon_universal_master_0_burstcount),    //   input,    width = 9,                         .burstcount
		.uav_read               (dma_read_master_data_read_master_translator_avalon_universal_master_0_read),          //   input,    width = 1,                         .read
		.uav_write              (dma_read_master_data_read_master_translator_avalon_universal_master_0_write),         //   input,    width = 1,                         .write
		.uav_waitrequest        (dma_read_master_data_read_master_translator_avalon_universal_master_0_waitrequest),   //  output,    width = 1,                         .waitrequest
		.uav_readdatavalid      (dma_read_master_data_read_master_translator_avalon_universal_master_0_readdatavalid), //  output,    width = 1,                         .readdatavalid
		.uav_byteenable         (dma_read_master_data_read_master_translator_avalon_universal_master_0_byteenable),    //   input,   width = 64,                         .byteenable
		.uav_readdata           (dma_read_master_data_read_master_translator_avalon_universal_master_0_readdata),      //  output,  width = 512,                         .readdata
		.uav_writedata          (dma_read_master_data_read_master_translator_avalon_universal_master_0_writedata),     //   input,  width = 512,                         .writedata
		.uav_lock               (dma_read_master_data_read_master_translator_avalon_universal_master_0_lock),          //   input,    width = 1,                         .lock
		.uav_debugaccess        (dma_read_master_data_read_master_translator_avalon_universal_master_0_debugaccess),   //   input,    width = 1,                         .debugaccess
		.av_address             (pipe_stage_dma_read_s0_address),                                                      //  output,   width = 50,      avalon_anti_slave_0.address
		.av_write               (pipe_stage_dma_read_s0_write),                                                        //  output,    width = 1,                         .write
		.av_read                (pipe_stage_dma_read_s0_read),                                                         //  output,    width = 1,                         .read
		.av_readdata            (pipe_stage_dma_read_s0_readdata),                                                     //   input,  width = 512,                         .readdata
		.av_writedata           (pipe_stage_dma_read_s0_writedata),                                                    //  output,  width = 512,                         .writedata
		.av_burstcount          (pipe_stage_dma_read_s0_burstcount),                                                   //  output,    width = 3,                         .burstcount
		.av_byteenable          (pipe_stage_dma_read_s0_byteenable),                                                   //  output,   width = 64,                         .byteenable
		.av_readdatavalid       (pipe_stage_dma_read_s0_readdatavalid),                                                //   input,    width = 1,                         .readdatavalid
		.av_waitrequest         (pipe_stage_dma_read_s0_waitrequest),                                                  //   input,    width = 1,                         .waitrequest
		.av_debugaccess         (pipe_stage_dma_read_s0_debugaccess),                                                  //  output,    width = 1,                         .debugaccess
		.av_begintransfer       (),                                                                                    // (terminated),                                        
		.av_beginbursttransfer  (),                                                                                    // (terminated),                                        
		.av_writebyteenable     (),                                                                                    // (terminated),                                        
		.av_lock                (),                                                                                    // (terminated),                                        
		.av_chipselect          (),                                                                                    // (terminated),                                        
		.av_clken               (),                                                                                    // (terminated),                                        
		.uav_clken              (1'b0),                                                                                // (terminated),                                        
		.av_outputenable        (),                                                                                    // (terminated),                                        
		.uav_response           (),                                                                                    // (terminated),                                        
		.av_response            (2'b00),                                                                               // (terminated),                                        
		.uav_writeresponsevalid (),                                                                                    // (terminated),                                        
		.av_writeresponsevalid  (1'b0)                                                                                 // (terminated),                                        
	);

endmodule
