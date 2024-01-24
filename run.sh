rm -rf obj_dir_trace    && mkdir -p obj_dir_trace
rm -rf obj_dir          && mkdir -p obj_dir

verilator --cc --trace -Wall -Wno-UNUSEDSIGNAL -Wno-UNDRIVEN --exe --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir_trace --build-jobs 32
verilator --cc         -Wall -Wno-UNUSEDSIGNAL -Wno-UNDRIVEN --exe --build tb_base.cc top.sv -CFLAGS '-I.. -g' --Mdir obj_dir       --build-jobs 32

echo notrace
obj_dir/Vtop
echo trace
obj_dir_trace/Vtop
