#!/bin/bash

echo "Running eeil on Pill Base dataset"

for NUMTASKS in 5 10 15
do
    echo "NUMTASKS: $NUMTASKS"
    python src/main_incremental.py --approach eeil \
                                    --datasets pill_base_x_true_norm \
                                    --exp-name herding_origin\
                                    --num-exemplars-per-class 4 \
                                    --network resnet50 \
                                    --num-tasks $NUMTASKS \
                                    --results-path ../new_results_eeil \
                                    --exemplar-selection herding \
                                    --seed 4 \
                                    --gpu 0

done