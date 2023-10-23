#!/bin/bash

> test_results.txt

counter=0
for referencemonitor in reference_monitor_*; do
    ((counter++))
    echo $counter : $referencemonitor under test | tee -a test_results.txt
    for testcase in rr4433_attackcase2*; do
        test_output=$(python repy.py restrictions.default encasementlib.r2py $referencemonitor $testcase 2>&1 | tee -a test_results.txt)
        if [ -n "$test_output" ]; then
            echo "Output detected"
            echo $test_output | tail -n 1
            # echo ""
        else
            echo ""
        fi
    done
done
