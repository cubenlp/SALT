#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python demo.py \
    --config-file configs/Partitioned_COI_RS101_2x.yaml \
	--input "/home/yuxiang/Attend-and-Excite-main/228_step35/salt1163/*" \
    --pkl_pth "/home/yuxiang/Attend-and-Excite-main/228_step35/salt1163/drawbench_counting.pkl" \
	--output "/home/yuxiang/Attend-and-Excite-main/228_step35/salt1163/gt" \
    --opts MODEL.WEIGHTS /home/yuxiang/data_evaluate_LLM/eval_metrics/detection/Partitioned_COI_RS101_2x.pth