var areaJSON='{"columns":["", "ALUTs", "FFs", "RAMs", "DSPs", "MLABs", "Details"], "debug_enabled":"true", "type":"module", "total_percent":[25.4411, 16.187, 10.7378, 15.6653, 0], "total":[137482, 183488, 425, 0, 41], "name":"Kernel System", "max_resources":[854400, 1708800, 2713, 1518, 42720], "children":[{"name":"Static Partition", "type":"partition", "children":[{"name":"Board interface", "type":"resource", "data":[134500, 172452, 397, 0, 0], "details":[{"type":"text", "text":"Platform interface logic."}]}]}, {"name":"Global interconnect", "type":"resource", "data":[1289, 6591, 26, 0, 0], "details":[{"type":"text", "text":"Global interconnect for 0 global loads and 1 global store."}, {"type":"brief", "text":"For 0 global loads and 1 global store."}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Global Memory Interconnect", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#hnj1476724450050"}]}]}, {"name":"System description ROM", "type":"resource", "data":[0, 67, 2, 0, 0], "details":[{"type":"text", "text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program."}, {"type":"brief", "text":"Contains information for the host."}]}, {"name":"hello_world", "compute_units":1, "type":"function", "total_percent":[0.529476, 0.294125, 0.256203, 0, 0], "total_kernel_resources":[1693, 4378, 0, 0, 41], "details":[{"type":"text", "text":"Number of compute units: 1"}, {"type":"text", "text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}, {"type":"brief", "text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality."}], "children":[{"name":"Function overhead", "type":"resource", "data":[1338, 2411, 0, 0, 10], "details":[{"type":"text", "text":"Kernel dispatch logic."}, {"type":"brief", "text":"Kernel dispatch logic."}]}, {"name":"hello_world.B0", "type":"basicblock", "children":[{"name":"State", "type":"resource", "data":[2, 2, 0, 0, 0], "details":[{"type":"brief", "text":"Live values and control logic"}, {"type":"text", "text":"Resources for live values and control logic. To reduce this area:", "details":[{"type":"text", "text":"reduce size of local variables"}, {"type":"text", "text":"reduce scope of local variables, localizing them as much as possible"}, {"type":"text", "text":"reduce number of nested loops"}]}], "children":[{"name":"No Source Line", "type":"resource", "data":[2, 2, 0, 0, 0]}]}, {"name":"Computation", "type":"resource", "children":[{"name":"hello_world.cl:28", "type":"resource", "data":[11, 0, 0, 0, 0], "debug":[[{"filename":"device/hello_world.cl", "line":28}]], "children":[{"name":"32-bit Integer Compare", "type":"resource", "count":1, "data":[11, 0, 0, 0, 0]}], "replace_name":"true"}, {"name":"hello_world.cl:29", "type":"resource", "data":[342, 1965, 0, 0, 31], "debug":[[{"filename":"device/hello_world.cl", "line":29}]], "children":[{"name":"Store", "type":"resource", "count":1, "data":[301, 1704, 0, 0, 31], "details":[{"type":"text", "text":"Store to global memory that implements printf functionality. printf is a debug tool that may slow down overall system performance. Remove from production code."}, {"type":"brief", "text":"Store to global memory that implements printf functionality."}]}, {"name":"llvm.fpga.printf", "type":"resource", "count":1, "data":[41, 261, 0, 0, 0]}], "replace_name":"true"}]}]}]}]}';
var area_srcJSON='{"children":[{"children":[{"data":[134500,172452,397,0,0],"details":[{"text":"Platform interface logic.","type":"text"}],"name":"Board interface","type":"resource"}],"name":"Static Partition","type":"partition"},{"data":[1289,6591,26,0,0],"details":[{"text":"Global interconnect for 0 global loads and 1 global store.","type":"text"},{"text":"For 0 global loads and 1 global store.","type":"brief"},{"links":[{"guide":"Best Practices Guide : Global Memory Interconnect","link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#hnj1476724450050"}],"text":"See %L for more information","type":"text"}],"name":"Global interconnect","type":"resource"},{"data":[0,67,2,0,0],"details":[{"text":"This read-only memory contains information for the host about the system and about each kernel in the system, including kernel names, arguments, and attributes. The system description ROM ensures that the binary image on the FPGA is compatible with the host program.","type":"text"},{"text":"Contains information for the host.","type":"brief"}],"name":"System description ROM","type":"resource"},{"children":[{"data":[0,0,0,0,0],"details":[{"text":"Feedback+Cluster logic","type":"brief"}],"name":"Data control overhead","type":"resource"},{"data":[1338,2411,0,0,10],"details":[{"text":"Kernel dispatch logic.","type":"text"},{"text":"Kernel dispatch logic.","type":"brief"}],"name":"Function overhead","type":"resource"},{"children":[{"count":1,"data":[2,2,0,0,0],"debug":[[{"filename":"","line":0}]],"name":"State","type":"resource"}],"data":[2,2,0,0,0],"name":"No Source Line","type":"resource"},{"children":[{"count":1,"data":[11,0,0,0,0],"debug":[[{"filename":"device/hello_world.cl","line":28}]],"name":"32-bit Integer Compare","type":"resource"}],"data":[11,0,0,0,0],"debug":[[{"filename":"device/hello_world.cl","line":28}]],"name":"device/hello_world.cl:28","replace_name":"true","type":"resource"},{"children":[{"count":1,"data":[301,1704,0,0,31],"debug":[[{"filename":"device/hello_world.cl","line":29}]],"name":"Store","type":"resource"},{"count":1,"data":[41,261,0,0,0],"debug":[[{"filename":"device/hello_world.cl","line":29}]],"name":"llvm.fpga.printf","type":"resource"}],"data":[342,1965,0,0,31],"debug":[[{"filename":"device/hello_world.cl","line":29}]],"name":"device/hello_world.cl:29","replace_name":"true","type":"resource"}],"compute_units":1,"data":[1693,4378,0,0,41],"details":[{"text":"Number of compute units: 1","type":"text"},{"text":"Kernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"text"},{"text":"1 compute unit.\\nKernel attribute \'uses_global_work_offset\' not specified. Add \'__attribute__((uses_global_work_offset(0)))\' to reduce area utilization if the kernel will always be enqueued with a 0 or NULL global_work_offset argument in clEnqueueNDRangeKernel. Add \'__attribute__((uses_global_work_offset(1)))\' to hide this suggestion without affecting kernel functionality.","type":"brief"}],"name":"hello_world","total_kernel_resources":[1693,4378,0,0,41],"total_percent":[0.529476,0.294125,0.256203,0,0],"type":"function"}],"columns":["","ALUTs","FFs","RAMs","DSPs","MLABs","Details"],"data":[2982,11036,28,0,41],"debug_enabled":"true","max_resources":[854400,1708800,2713,1518,42720],"name":"Kernel System","total":[137482,183488,425,0,41],"total_percent":[25.4411,16.187,10.7378,15.6653,0],"type":"module"}';
var mavJSON='{"nodes":[{"type":"kernel", "id":2, "name":"hello_world", "children":[{"type":"bb", "id":3, "name":"hello_world.B0", "children":[{"type":"inst", "id":4, "name":"Store", "debug":[[{"filename":"device/hello_world.cl", "line":29}]], "details":[{"type":"table", "Width":"256 bits", "Type":"Burst-coalesced", "Stall-free":"No", "Start Cycle":"3", "Latency":"2", "Reference":[{"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Load-Store Units", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#yeo1491314105959"}]}]}]}, {"type":"inst", "id":5, "name":"Begin", "details":[{"type":"table", "Start Cycle":"0", "Latency":"1"}]}, {"type":"inst", "id":6, "name":"End", "details":[{"type":"table", "Start Cycle":"5", "Latency":"1"}]}], "details":[{"type":"table", "Latency":"5"}]}]}, {"type":"memtype", "id":1, "name":"Global Memory", "children":[{"type":"memsys", "id":7, "name":"DDR", "details":[{"type":"table", "Number of banks":"2"}]}]}], "links":[{"from":4, "to":6}, {"from":5, "to":4}, {"from":4, "to":7}]}';
var loopsJSON='{"columns":["", "Pipelined", "II", "Speculated iterations", "Details"], "children":[{"name":"Kernel: hello_world", "data":["", "", ""], "debug":[[{"filename":"device/hello_world.cl", "line":24}]], "details":[{"type":"brief", "text":"ND-Range"}, {"type":"text", "text":"ND-Range"}, {"type":"text", "text":"Fmax bottlenck block: None"}, {"type":"text", "text":"See %L for more information", "links":[{"guide":"Best Practices Guide : Kernels", "link":"https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807516407.html#ipp1476408832230"}]}]}]}';
var fmax_iiJSON='{"basicblocks":{"hello_world.B0":{"name":"hello_world.B0", "target_fmax":"Not specified", "target_ii":"Not specified", "achieved_fmax":"240.0", "achieved_ii":1, "latency":5, "max_interleaving":1, "is_fmax_bottleneck":"No", "is_loop_header":"No", "is_single_block_loop":"No", "loop_layer":0, "loop_location":{}}}, "functions":{"hello_world":{"debug":[{"filename":"device/hello_world.cl", "line":24}], "loop_hierachy":{"hello_world__no_loop":["hello_world.B0"]}}}}';
var summaryJSON='{"performanceSummary":{"name":"Kernel Summary", "columns":["Kernel Name", "Kernel Type", "Autorun", "Workgroup Size", "# Compute Units"], "children":[{"name":"hello_world", "data":["NDRange", "No", "n/a", 1], "details":[{"type":"text", "text":"Kernel type: NDRange"}, {"type":"text", "text":"The kernel does not use any work-group information (such as get_local_id() or get_group_id()).Local work-group size will be automatically modified to match global work-group size on launch.This is a hardware optimization."}], "debug":[[{"filename":"device/hello_world.cl", "line":24}]]}]}, "estimatedResources":{"name":"Estimated Resource Usage", "columns":["Kernel Name", "ALUTs ", "FFs  ", "RAMs ", "DSPs ", "MLABs"], "children":[{"name":"hello_world", "data":[1693, 4378, 0, 0, 41], "debug":[[{"filename":"device/hello_world.cl", "line":24}]]}, {"name":"Global Interconnect", "classes":["summary-highlight", "nohover"], "data":[1289, 6591, 26, 0, 0]}, {"name":"Board Interface", "classes":["summary-highlight", "nohover"], "data":[134500, 172452, 397, 0, 0]}, {"name":"System description ROM", "classes":["summary-highlight", "nohover"], "data":[0, 67, 2, 0, 0]}, {"name":"Total", "classes":["summary-highlight", "nohover"], "data":[137482, 183488, 425, 0, 41], "data_percent":[16.0911, 10.7378, 15.6653, 0]}, {"name":"Available", "classes":["summary-highlight", "nohover"], "data":[854400, 1708800, 2713, 1518, 0]}]}, "compileWarnings":{"name":"Compile Warnings", "children":[]}}';
var infoJSON='{"name":"Info","rows":[{"classes":["info-table"],"data":["hello_world_fpga"],"name":"Project Name"},{"data":["Arria 10, 10AX115S2F45I2SGES, dcp_bsp:pac_a10"],"name":"Target Family, Device, Board"},{"data":["19.4.0 Build 64"],"name":"AOC Version"},{"data":["19.2.0 Build 57 Pro"],"name":"Quartus Version"},{"data":["aoc device/hello_world.cl -o bin/hello_world_fpga.aocx -board=pac_a10"],"name":"Command"},{"data":["Sat Jun  5 08:37:32 2021"],"name":"Reports Generated At"}]}';
var warningsJSON='{"rows":[]}';
var quartusJSON='{"quartusFitClockSummary":{"children":[{"details":[{"text":"This section contains a summary of the area and f<sub>MAX</sub> data generated by compiling the kernels through Quartus. \\nTo generate the data, run a Quartus compile on the project created for this design. \\nTo run the Quartus compile, please run command without flag -c, -rtl or -march=emulator","type":"text"}],"name":"Run Quartus compile to populate this section. See details for more information."}],"name":"Quartus Fit Summary"}}';
var fileJSON=[{"path":"/home/u76643/A10_OPENCL_AFU_backup/hello_world/device/hello_world.cl", "name":"hello_world.cl", "has_active_debug_locs":false, "absName":"/home/u76643/A10_OPENCL_AFU_backup/hello_world/device/hello_world.cl", "content":"// Copyright (C) 2013-2019 Altera Corporation, San Jose, California, USA. All rights reserved.\012// Permission is hereby granted, free of charge, to any person obtaining a copy of this\012// software and associated documentation files (the \"Software\"), to deal in the Software\012// without restriction, including without limitation the rights to use, copy, modify, merge,\012// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to\012// whom the Software is furnished to do so, subject to the following conditions:\012// The above copyright notice and this permission notice shall be included in all copies or\012// substantial portions of the Software.\012// \012// THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND,\012// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES\012// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND\012// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT\012// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,\012// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING\012// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR\012// OTHER DEALINGS IN THE SOFTWARE.\012// \012// This agreement shall be governed in all respects by the laws of the State of California and\012// by the laws of the United States of America.\012\012// AOC kernel demonstrating device-side printf call\012\012__kernel void hello_world(int thread_id_from_which_to_print_message) {\012  // Get index of the work item\012  unsigned thread_id = get_global_id(0);\012\012  if(thread_id == thread_id_from_which_to_print_message) {\012    printf(\"Thread #%u: Hello from the Brian Ryner!\\n\", thread_id);\012  }\012}\012\012"}];