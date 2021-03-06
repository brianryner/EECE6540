// dma_core_dma_write_master.v

// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module dma_core_dma_write_master #(
		parameter DATA_WIDTH                     = 512,
		parameter LENGTH_WIDTH                   = 24,
		parameter FIFO_DEPTH                     = 128,
		parameter STRIDE_ENABLE                  = 0,
		parameter BURST_ENABLE                   = 1,
		parameter WRITE_RESPONSE_ENABLE          = 0,
		parameter PACKET_ENABLE                  = 0,
		parameter ERROR_ENABLE                   = 0,
		parameter ERROR_WIDTH                    = 8,
		parameter BYTE_ENABLE_WIDTH              = 64,
		parameter BYTE_ENABLE_WIDTH_LOG2         = 6,
		parameter NO_BYTEENABLES                 = 0,
		parameter ADDRESS_WIDTH                  = 50,
		parameter FIFO_DEPTH_LOG2                = 7,
		parameter SYMBOL_WIDTH                   = 8,
		parameter NUMBER_OF_SYMBOLS              = 64,
		parameter NUMBER_OF_SYMBOLS_LOG2         = 6,
		parameter MAX_BURST_COUNT_WIDTH          = 3,
		parameter UNALIGNED_ACCESSES_ENABLE      = 0,
		parameter ONLY_FULL_ACCESS_ENABLE        = 1,
		parameter BURST_WRAPPING_SUPPORT         = 0,
		parameter PROGRAMMABLE_BURST_ENABLE      = 1,
		parameter MAX_BURST_COUNT                = 4,
		parameter FIFO_SPEED_OPTIMIZATION        = 1,
		parameter STRIDE_WIDTH                   = 1,
		parameter ACTUAL_BYTES_TRANSFERRED_WIDTH = 32
	) (
		input  wire         clk,                //             Clock.clk
		input  wire         reset,              //       Clock_reset.reset
		output wire [49:0]  master_address,     // Data_Write_Master.address
		output wire         master_write,       //                  .write
		output wire [63:0]  master_byteenable,  //                  .byteenable
		output wire [511:0] master_writedata,   //                  .writedata
		input  wire         master_waitrequest, //                  .waitrequest
		output wire [2:0]   master_burstcount,  //                  .burstcount
		input  wire [511:0] snk_data,           //         Data_Sink.data
		input  wire         snk_valid,          //                  .valid
		output wire         snk_ready,          //                  .ready
		input  wire [255:0] snk_command_data,   //      Command_Sink.data
		input  wire         snk_command_valid,  //                  .valid
		output wire         snk_command_ready,  //                  .ready
		output wire [255:0] src_response_data,  //   Response_Source.data
		output wire         src_response_valid, //                  .valid
		input  wire         src_response_ready  //                  .ready
	);

	write_master #(
		.DATA_WIDTH                     (DATA_WIDTH),
		.LENGTH_WIDTH                   (LENGTH_WIDTH),
		.FIFO_DEPTH                     (FIFO_DEPTH),
		.STRIDE_ENABLE                  (STRIDE_ENABLE),
		.BURST_ENABLE                   (BURST_ENABLE),
		.WRITE_RESPONSE_ENABLE          (WRITE_RESPONSE_ENABLE),
		.PACKET_ENABLE                  (PACKET_ENABLE),
		.ERROR_ENABLE                   (ERROR_ENABLE),
		.ERROR_WIDTH                    (ERROR_WIDTH),
		.BYTE_ENABLE_WIDTH              (BYTE_ENABLE_WIDTH),
		.BYTE_ENABLE_WIDTH_LOG2         (BYTE_ENABLE_WIDTH_LOG2),
		.NO_BYTEENABLES                 (NO_BYTEENABLES),
		.ADDRESS_WIDTH                  (ADDRESS_WIDTH),
		.FIFO_DEPTH_LOG2                (FIFO_DEPTH_LOG2),
		.SYMBOL_WIDTH                   (SYMBOL_WIDTH),
		.NUMBER_OF_SYMBOLS              (NUMBER_OF_SYMBOLS),
		.NUMBER_OF_SYMBOLS_LOG2         (NUMBER_OF_SYMBOLS_LOG2),
		.MAX_BURST_COUNT_WIDTH          (MAX_BURST_COUNT_WIDTH),
		.UNALIGNED_ACCESSES_ENABLE      (UNALIGNED_ACCESSES_ENABLE),
		.ONLY_FULL_ACCESS_ENABLE        (ONLY_FULL_ACCESS_ENABLE),
		.BURST_WRAPPING_SUPPORT         (BURST_WRAPPING_SUPPORT),
		.PROGRAMMABLE_BURST_ENABLE      (PROGRAMMABLE_BURST_ENABLE),
		.MAX_BURST_COUNT                (MAX_BURST_COUNT),
		.FIFO_SPEED_OPTIMIZATION        (FIFO_SPEED_OPTIMIZATION),
		.STRIDE_WIDTH                   (STRIDE_WIDTH),
		.ACTUAL_BYTES_TRANSFERRED_WIDTH (ACTUAL_BYTES_TRANSFERRED_WIDTH)
	) dma_write_master (
		.clk                       (clk),                //   input,    width = 1,             Clock.clk
		.reset                     (reset),              //   input,    width = 1,       Clock_reset.reset
		.master_address            (master_address),     //  output,   width = 50, Data_Write_Master.address
		.master_write              (master_write),       //  output,    width = 1,                  .write
		.master_byteenable         (master_byteenable),  //  output,   width = 64,                  .byteenable
		.master_writedata          (master_writedata),   //  output,  width = 512,                  .writedata
		.master_waitrequest        (master_waitrequest), //   input,    width = 1,                  .waitrequest
		.master_burstcount         (master_burstcount),  //  output,    width = 3,                  .burstcount
		.snk_data                  (snk_data),           //   input,  width = 512,         Data_Sink.data
		.snk_valid                 (snk_valid),          //   input,    width = 1,                  .valid
		.snk_ready                 (snk_ready),          //  output,    width = 1,                  .ready
		.snk_command_data          (snk_command_data),   //   input,  width = 256,      Command_Sink.data
		.snk_command_valid         (snk_command_valid),  //   input,    width = 1,                  .valid
		.snk_command_ready         (snk_command_ready),  //  output,    width = 1,                  .ready
		.src_response_data         (src_response_data),  //  output,  width = 256,   Response_Source.data
		.src_response_valid        (src_response_valid), //  output,    width = 1,                  .valid
		.src_response_ready        (src_response_ready), //   input,    width = 1,                  .ready
		.master_response           (2'b00),              // (terminated),                                 
		.master_writeresponsevalid (1'b0),               // (terminated),                                 
		.snk_sop                   (1'b0),               // (terminated),                                 
		.snk_eop                   (1'b0),               // (terminated),                                 
		.snk_empty                 (6'b000000),          // (terminated),                                 
		.snk_error                 (8'b00000000)         // (terminated),                                 
	);

endmodule
