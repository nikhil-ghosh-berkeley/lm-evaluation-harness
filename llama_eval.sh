#!/bin/bash
qlora_dir=/home/v-nikhghosh/finetune-qlora
exp_dir=output/llama_lora_flan_v2/flan_v2_sub_1.0_lr_1.5e-4_power_0_strat_sqrt_train_50k_seed_0

lm_eval --model hf \
    --model_args pretrained=meta-llama/Llama-2-7b-hf,peft=$qlora_dir/$exp_dir \
    --tasks mmlu \
    --output_path $qlora_dir/$exp_dir \
    --num_fewshot 5 \
    --device cuda:0