#!/bin/bash

counter=0
for referencemonitor in reference_monitor_*; do
    ((counter++))
    echo $counter : $referencemonitor under test
    for testcase in rr4433_attackcase1*; do
        test_output=$(python repy.py restrictions.default encasementlib.r2py $referencemonitor $testcase 2>&1)
        if [ -n "$test_output" ]; then
            echo "Output detected"
            echo $test_output | tail -n 1
            # :
        else
            # echo "No output"
            :
        fi
    done
done
