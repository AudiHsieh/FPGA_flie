#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jiaming/workplace/Read_the_docs/project_files/project2/cordic/HLS/cordic_fixed/solution1/.autopilot/db/a.g.bc ${1+"$@"}