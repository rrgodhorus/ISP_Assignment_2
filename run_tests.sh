#!/bin/bash

> test_results.txt
> testcases_bypassed.txt

counter=0
for referencemonitor in reference_monitor_rr4433*; do
    ((counter++))
    echo $counter : $referencemonitor under test | tee -a test_results.txt
    counter2=0
    for testcase in mm13171_attackcase*.r2py; do
        ((counter2++))
        echo $counter2 : $testcase attacking $referencemonitor 
        test_output=$(python repy.py restrictions.default dylink.r2py encasementlib.r2py $referencemonitor $testcase 2>&1 | tee -a test_results.txt)
        if [ -n "$test_output" ]; then
            echo "Output detected"
            echo $test_output | tail -n 1
            # echo $referencemonitor >> ref_mons_bypassed.txt
            echo $testcase >> testcases_bypassed.txt
        fi
    done
done

./cleanup_script.sh