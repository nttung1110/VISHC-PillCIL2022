#!/bin/bash

echo "Running eeil on Pill Base dataset"


# for NUMTASKS in 5 10 15 20

for NUMTASKS in 5 10 15
do
    echo "NUMTASKS: $NUMTASKS"
    python src/main_incremental_multistream_contour_early.py --approach lucir_multistream_contour \
                                    --datasets pill_base_x_multistream_true_norm\
                                    --exp-name early_fusion_edge \
                                    --num-exemplars-per-class 4 \
                                    --network resnet50 \
                                    --num-tasks $NUMTASKS \
                                    --results-path ../new_results_lucir \
                                    --seed 4 \
                                    --gpu 0
done