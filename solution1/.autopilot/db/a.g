#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yzou/LRUCache/solution1/.autopilot/db/a.g.bc ${1+"$@"}
