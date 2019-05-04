```
----------------------------------------
Benchmark files and scripts
Copyright 2019 Tõnis Lusmägi
Copyright 2019 TalTech
---------------------------------------------
```

	generate directories and set up template files and scripts:
		gen-dirs-linux.sh (for Linux users)
		gen-dirs-win.bat (for Windows users)

A collection of scripts and templates to benchmark and compare SGX performance on host vs. guest systems.


Run benchmarks and copy respective 'measurments' folders to 'warm' or 'cold' directory.

gen_datapoints_*.py / gen_datapoints_*.py generate Excel files for each benchmark, all 200 000 datapoints will be concatenated into one file for each microbenchmark. Put these into Excel template files. 

NOTE: before executing py scripts, calculate RDTSCP overheads using this code: https://github.com/SGX-performance/syscall-and-rdtscp-overhead or create your own, and insert the overheads into PY scripts. They will be subtracted from each test. 

NOTE 2: overheads might be different in host and guest environments, find each separatly.

gen_graphs_* files are MATLAB scripts that generate final figures from data in Excel templates.
