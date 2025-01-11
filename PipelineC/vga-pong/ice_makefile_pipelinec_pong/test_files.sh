#!/bin/bash
diff Makefile orig_files/Makefile.orig > test_results.txt
diff top.c orig_files/top.c.orig >> test_results.txt
diff top.h orig_files/top.h.orig >> test_results.txt
diff top.sv orig_files/top.sv.orig >> test_results.txt
diff ice40.pcf orig_files/ice40.pcf.orig >> test_results.txt
diff pong_top.c orig_files/pong_top.c.orig >> test_results.txt
diff README.md orig_files/README.md.orig >> test_results.txt
diffuse Makefile test_results.txt
