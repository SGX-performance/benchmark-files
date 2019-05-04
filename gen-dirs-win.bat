@ECHO OFF

SET var=%cd%
ECHO %var%

MD %var%\hotcalls\native\cold %var%\hotcalls\native\warm %var%\hotcalls\vm\cold %var%\hotcalls\vm\warm
MD %var%\switchless\native\cold %var%\switchless\native\warm %var%\switchless\vm\cold %var%\switchless\vm\warm

copy %var%\code\gen_datapoints_hot_native.py %var%\hotcalls\native\gen_datapoints_hot_native.py
copy %var%\code\gen_graphs_hot_native.m %var%\hotcalls\native\gen_graphs_hot_native.m
copy %var%\code\gen_datapoints_hot_vm.py %var%\hotcalls\vm\gen_datapoints_hot_vm.py
copy %var%\code\gen_graphs_hot_vm.m %var%\hotcalls\vm\gen_graphs_hot_vm.m

copy %var%\code\hot_native\HotEcall_latencies_in_cycles.xlsx %var%\hotcalls\native\HotEcall_latencies_in_cycles.xlsx
copy %var%\code\hot_native\HotOcall_latencies_in_cycles.xlsx %var%\hotcalls\native\HotOcall_latencies_in_cycles.xlsx
copy %var%\code\hot_native\SDKEcall_latencies_in_cycles.xlsx %var%\hotcalls\native\SDKEcall_latencies_in_cycles.xlsx
copy %var%\code\hot_native\SDKOcall_latencies_in_cycles.xlsx %var%\hotcalls\native\SDKOcall_latencies_in_cycles.xlsx

copy %var%\code\hot_vm\HotEcall_latencies_in_cycles.xlsx %var%\hotcalls\vm\HotEcall_latencies_in_cycles.xlsx
copy %var%\code\hot_vm\HotOcall_latencies_in_cycles.xlsx %var%\hotcalls\vm\HotOcall_latencies_in_cycles.xlsx
copy %var%\code\hot_vm\SDKEcall_latencies_in_cycles.xlsx %var%\hotcalls\vm\SDKEcall_latencies_in_cycles.xlsx
copy %var%\code\hot_vm\SDKOcall_latencies_in_cycles.xlsx %var%\hotcalls\vm\SDKOcall_latencies_in_cycles.xlsx




copy %var%\code\gen_datapoints_switchless_native.py %var%\switchless\native\gen_datapoints_switchless_native.py
copy %var%\code\gen_graphs_switchless_native.m %var%\switchless\native\gen_graphs_switchless_native.m
copy %var%\code\gen_datapoints_switchless_vm.py %var%\switchless\vm\gen_datapoints_switchless_vm.py
copy %var%\code\gen_graphs_switchless_vm.m %var%\switchless\vm\gen_graphs_switchless_vm.m

copy %var%\code\switchless_native\Empty_ecall_latencies_in_cycles.xlsx %var%\switchless\native\Empty_ecall_latencies_in_cycles.xlsx
copy %var%\code\switchless_native\Empty_ecall_switchless_latencies_in_cycles.xlsx %var%\switchless\native\Empty_ecall_switchless_latencies_in_cycles.xlsx
copy %var%\code\switchless_native\Empty_ocall_latencies_in_cycles.xlsx %var%\switchless\native\Empty_ocall_latencies_in_cycles.xlsx
copy %var%\code\switchless_native\Empty_ocall_switchless_in_cycles.xlsx %var%\switchless\native\Empty_ocall_switchless_in_cycles.xlsx

copy %var%\code\switchless_vm\Empty_ecall_latencies_in_cycles.xlsx %var%\switchless\vm\Empty_ecall_latencies_in_cycles.xlsx
copy %var%\code\switchless_vm\Empty_ecall_switchless_latencies_in_cycles.xlsx %var%\switchless\vm\Empty_ecall_switchless_latencies_in_cycles.xlsx
copy %var%\code\switchless_vm\Empty_ocall_latencies_in_cycles.xlsx %var%\switchless\vm\Empty_ocall_latencies_in_cycles.xlsx
copy %var%\code\switchless_vm\Empty_ocall_switchless_in_cycles.xlsx %var%\switchless\vm\Empty_ocall_switchless_in_cycles.xlsx

PAUSE