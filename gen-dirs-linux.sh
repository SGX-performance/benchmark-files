#!/bin/bash

echo $PWD

mkdir -p $PWD/hotcalls/native/cold $PWD/hotcalls/native/warm $PWD/hotcalls/vm/cold $PWD/hotcalls/vm/warm
mkdir -p $PWD/switchless/native/cold $PWD/switchless/native/warm $PWD/switchless/vm/cold $PWD/switchless/vm/warm

cp $PWD/code/gen_datapoints_hot_native.py $PWD/hotcalls/native/gen_datapoints_hot_native.py
cp $PWD/code/gen_graphs_hot_native.m $PWD/hotcalls/native/gen_graphs_hot_native.m
cp $PWD/code/gen_datapoints_hot_vm.py $PWD/hotcalls/vm/gen_datapoints_hot_vm.py
cp $PWD/code/gen_graphs_hot_vm.m $PWD/hotcalls/vm/gen_graphs_hot_vm.m

cp $PWD/code/hot_native/HotEcall_latencies_in_cycles.xlsx $PWD/hotcalls/native/HotEcall_latencies_in_cycles.xlsx
cp $PWD/code/hot_native/HotOcall_latencies_in_cycles.xlsx $PWD/hotcalls/native/HotOcall_latencies_in_cycles.xlsx
cp $PWD/code/hot_native/SDKEcall_latencies_in_cycles.xlsx $PWD/hotcalls/native/SDKEcall_latencies_in_cycles.xlsx
cp $PWD/code/hot_native/SDKOcall_latencies_in_cycles.xlsx $PWD/hotcalls/native/SDKOcall_latencies_in_cycles.xlsx

cp $PWD/code/hot_vm/HotEcall_latencies_in_cycles.xlsx $PWD/hotcalls/vm/HotEcall_latencies_in_cycles.xlsx
cp $PWD/code/hot_vm/HotOcall_latencies_in_cycles.xlsx $PWD/hotcalls/vm/HotOcall_latencies_in_cycles.xlsx
cp $PWD/code/hot_vm/SDKEcall_latencies_in_cycles.xlsx $PWD/hotcalls/vm/SDKEcall_latencies_in_cycles.xlsx
cp $PWD/code/hot_vm/SDKOcall_latencies_in_cycles.xlsx $PWD/hotcalls/vm/SDKOcall_latencies_in_cycles.xlsx




cp $PWD/code/gen_datapoints_switchless_native.py $PWD/switchless/native/gen_datapoints_switchless_native.py
cp $PWD/code/gen_graphs_switchless_native.m $PWD/switchless/native/gen_graphs_switchless_native.m
cp $PWD/code/gen_datapoints_switchless_vm.py $PWD/switchless/vm/gen_datapoints_switchless_vm.py
cp $PWD/code/gen_graphs_switchless_vm.m $PWD/switchless/vm/gen_graphs_switchless_vm.m

cp $PWD/code/switchless_native/Empty_ecall_latencies_in_cycles.xlsx $PWD/switchless/native/Empty_ecall_latencies_in_cycles.xlsx
cp $PWD/code/switchless_native/Empty_ecall_switchless_latencies_in_cycles.xlsx $PWD/switchless/native/Empty_ecall_switchless_latencies_in_cycles.xlsx
cp $PWD/code/switchless_native/Empty_ocall_latencies_in_cycles.xlsx $PWD/switchless/native/Empty_ocall_latencies_in_cycles.xlsx
cp $PWD/code/switchless_native/Empty_ocall_switchless_in_cycles.xlsx $PWD/switchless/native/Empty_ocall_switchless_in_cycles.xlsx

cp $PWD/code/switchless_vm/Empty_ecall_latencies_in_cycles.xlsx $PWD/switchless/vm/Empty_ecall_latencies_in_cycles.xlsx
cp $PWD/code/switchless_vm/Empty_ecall_switchless_latencies_in_cycles.xlsx $PWD/switchless/vm/Empty_ecall_switchless_latencies_in_cycles.xlsx
cp $PWD/code/switchless_vm/Empty_ocall_latencies_in_cycles.xlsx $PWD/switchless/vm/Empty_ocall_latencies_in_cycles.xlsx
cp $PWD/code/switchless_vm/Empty_ocall_switchless_in_cycles.xlsx $PWD/switchless/vm/Empty_ocall_switchless_in_cycles.xlsx















