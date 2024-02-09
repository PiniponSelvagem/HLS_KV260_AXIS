# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\HLS_playground\Kria_KV260_Vision__axis\vitis\playground_system\_ide\scripts\debugger_playground-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\HLS_playground\Kria_KV260_Vision__axis\vitis\playground_system\_ide\scripts\debugger_playground-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source E:/Xilinx/Vitis/2023.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx X-MLCC-01 XFL1RJW0IOCJA" && level==0 && jtag_device_ctx=="jsn-X-MLCC-01-XFL1RJW0IOCJA-04724093-0"}
fpga -file E:/HLS_playground/Kria_KV260_Vision__axis/vitis/playground/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/HLS_playground/Kria_KV260_Vision__axis/vitis/design_1_wrapper/export/design_1_wrapper/hw/design_1_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/HLS_playground/Kria_KV260_Vision__axis/vitis/design_1_wrapper/export/design_1_wrapper/sw/design_1_wrapper/boot/fsbl.elf
set bp_5_46_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_5_46_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/HLS_playground/Kria_KV260_Vision__axis/vitis/playground/Debug/playground.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
