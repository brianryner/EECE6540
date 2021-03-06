// msgdma_bbb_afu_id_avmm_slave_0.v

// Generated using ACDS version 19.2 57

`timescale 1 ps / 1 ps
module msgdma_bbb_afu_id_avmm_slave_0 (
		input  wire        clk,            //         clock.clk
		input  wire        reset,          //         reset.reset
		output wire [63:0] avmm_readdata,  // afu_cfg_slave.readdata
		input  wire [63:0] avmm_writedata, //              .writedata
		input  wire [2:0]  avmm_address,   //              .address
		input  wire        avmm_write,     //              .write
		input  wire        avmm_read       //              .read
	);

	afu_id_avmm_slave #(
		.AFU_ID_H           (64'b1110111110000010110111101111011111110110111011000100000011111100),
		.AFU_ID_L           (64'b1010100100010100100110100011010110111010110011100000000111101010),
		.DFH_FEATURE_TYPE   (4'b0010),
		.DFH_AFU_MINOR_REV  (4'b0000),
		.DFH_AFU_MAJOR_REV  (4'b0000),
		.DFH_END_OF_LIST    (1'b0),
		.DFH_NEXT_OFFSET    (24'b000000000000000100000000),
		.DFH_FEATURE_ID     (12'b000000000000),
		.NEXT_AFU_OFFSET    (24'b000000000000000000000000),
		.CREATE_SCRATCH_REG (1'b0)
	) msgdma_bbb_afu_id_avmm_slave_0 (
		.clk            (clk),            //   input,   width = 1,         clock.clk
		.reset          (reset),          //   input,   width = 1,         reset.reset
		.avmm_readdata  (avmm_readdata),  //  output,  width = 64, afu_cfg_slave.readdata
		.avmm_writedata (avmm_writedata), //   input,  width = 64,              .writedata
		.avmm_address   (avmm_address),   //   input,   width = 3,              .address
		.avmm_write     (avmm_write),     //   input,   width = 1,              .write
		.avmm_read      (avmm_read)       //   input,   width = 1,              .read
	);

endmodule
