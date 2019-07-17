@echo off
setlocal enabledelayedexpansion
@rem set string=rpmalloc,tcmalloc,crt,hoard,nedmalloc
set string=rpmalloc,tcmalloc,mimalloc,crt
:again
for /f "tokens=1* delims=," %%x in ("%string%") do (
	set executable=bin\windows\release\x86-64\benchmark-%%x.exe
	set string=%%y
)

REM printf("Usage: benchmark <thread count> <mode> <size mode> <cross rate> <loops> <allocs> <op count> <min size> <max size>\n"
REM        "         <thread count>     Number of execution threads\n"
REM        "         <mode>             0 for random size [min, max], 1 for fixed size (min)\n"
REM        "         <size mode>        0 for even distribution, 1 for linear dropoff, 2 for exp dropoff\n"
REM        "         <cross rate>       Rate of cross-thread deallocations (every n iterations), 0 for none\n"
REM        "         <loops>            Number of loops in each iteration (0 for default, 800k)\n"
REM        "         <allocs>           Number of concurrent allocations in each thread, (0 for default, 10k)\n"
REM        "         <op count>         Iteration operation count\n"
REM        "         <min size>         Minimum size for random mode, fixed size for fixed mode\n"
REM        "         <max size>         Maximum size for random mode, ignored for fixed mode\n");

REM %executable% 1 0 0 2 10000 50000 5000 16 1000
REM %executable% 2 0 0 2 10000 50000 5000 16 1000
REM %executable% 3 0 0 2 10000 50000 5000 16 1000
REM %executable% 4 0 0 2 10000 50000 5000 16 1000
REM %executable% 5 0 0 2 10000 50000 5000 16 1000
REM %executable% 6 0 0 2 10000 50000 5000 16 1000
REM %executable% 7 0 0 2 10000 50000 5000 16 1000
REM %executable% 8 0 0 2 10000 50000 5000 16 1000
REM %executable% 9 0 0 2 10000 50000 5000 16 1000
REM %executable% 10 0 0 2 10000 50000 5000 16 1000

REM %executable% 1 0 1 2 10000 50000 5000 16 8000
REM %executable% 2 0 1 2 10000 50000 5000 16 8000
REM %executable% 3 0 1 2 10000 50000 5000 16 8000
REM %executable% 4 0 1 2 10000 50000 5000 16 8000
REM %executable% 5 0 1 2 10000 50000 5000 16 8000
REM %executable% 6 0 1 2 10000 50000 5000 16 8000
REM %executable% 7 0 1 2 10000 50000 5000 16 8000
REM %executable% 8 0 1 2 10000 50000 5000 16 8000
REM %executable% 9 0 1 2 10000 50000 5000 16 8000
REM %executable% 10 0 1 2 10000 50000 5000 16 8000

REM %executable% 1 0 1 2 10000 50000 5000 16 16000
REM %executable% 2 0 1 2 10000 50000 5000 16 16000
REM %executable% 3 0 1 2 10000 50000 5000 16 16000
REM %executable% 4 0 1 2 10000 50000 5000 16 16000
REM %executable% 5 0 1 2 10000 50000 5000 16 16000
REM %executable% 6 0 1 2 10000 50000 5000 16 16000
REM %executable% 7 0 1 2 10000 50000 5000 16 16000
REM %executable% 8 0 1 2 10000 50000 5000 16 16000
REM %executable% 9 0 1 2 10000 50000 5000 16 16000
REM %executable% 10 0 1 2 10000 50000 5000 16 16000

REM %executable% 1 0 2 2 10000 30000 3000 128 64000
REM %executable% 2 0 2 2 10000 30000 3000 128 64000
REM %executable% 3 0 2 2 10000 30000 3000 128 64000
REM %executable% 4 0 2 2 10000 30000 3000 128 64000
REM %executable% 5 0 2 2 10000 30000 3000 128 64000
REM %executable% 6 0 2 2 10000 30000 3000 128 64000
REM %executable% 7 0 2 2 10000 30000 3000 128 64000
REM %executable% 8 0 2 2 10000 30000 3000 128 64000
REM %executable% 9 0 2 2 10000 30000 3000 128 64000
REM %executable% 10 0 2 2 10000 30000 3000 128 64000

REM %executable% 1 0 2 2 10000 20000 2000 512 160000
REM %executable% 2 0 2 2 10000 20000 2000 512 160000
REM %executable% 3 0 2 2 10000 20000 2000 512 160000
REM %executable% 4 0 2 2 10000 20000 2000 512 160000
REM %executable% 5 0 2 2 10000 20000 2000 512 160000
REM %executable% 6 0 2 2 10000 20000 2000 512 160000
REM %executable% 7 0 2 2 10000 20000 2000 512 160000
REM %executable% 8 0 2 2 10000 20000 2000 512 160000
REM %executable% 9 0 2 2 10000 20000 2000 512 160000
%executable% 10 0 2 2 1000 2000 200 16 1600000

if not ".%string%"=="." goto again
