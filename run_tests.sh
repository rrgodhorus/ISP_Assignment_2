#!/bin/bash

> test_results.txt
> testcases_bypassed.txt

counter=0
for referencemonitor in reference_monitor_*; do
    ((counter++))
    echo $counter : $referencemonitor under test | tee -a test_results.txt
    counter2=0
    for testcase in *_attackcase*.r2py; do
        ((counter2++))
        echo $counter2 : $testcase attacking $referencemonitor 
        test_output=$(python repy.py restrictions.default encasementlib.r2py $referencemonitor $testcase 2>&1 | tee -a test_results.txt)
        if [ -n "$test_output" ]; then
            echo "Output detected!"
            echo $test_output | tail -n 1
            echo "$testcase successfully attacked $referencemonitor" >> testcases_bypassed.txt
        fi
        ./cleanup_script.sh
    done
done
