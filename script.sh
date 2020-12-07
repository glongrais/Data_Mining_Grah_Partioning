#!/bin/bash
echo "bash ${BASH_VERSION}"
for i in 0.0001 0.001 0.9
    do
        ./run.sh -graph ./graphs/3elt.graph -delta $i -temp 1.0
        ./plot.sh output/3elt.graph_NS_HYBRID_GICP_ROUND_ROBIN_T_1.0_D_${i}_RNSS_3_URSS_6_A_2.0_R_1000.txt
        mv graph.png graph${i}.png 
    done