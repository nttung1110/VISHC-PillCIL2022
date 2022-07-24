#!/bin/bash

echo "Running eeil on Pill Base dataset"


# for NUMTASKS in 5 10 15 20

for NUMTASKS in 10 15
do
    echo "NUMTASKS: $NUMTASKS"
    python src/main_incremental_intermediate_fusion.py --approach bic_multistream_histo \
                                    --datasets pill_base_x_multistream_true_norm\
                                    --exp-name refactor_4_exemplar \
                                    --num-exemplars-per-class 4 \
                                    --network resnet50 \
                                    --num-tasks $NUMTASKS \
                                    --results-path ../results_bic \
                                    --seed 1
done