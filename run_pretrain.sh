cd ./src
python main.py --dir_data ../nyudepthv2 --data_name NYU  --split_json ../data_json/nyu.json \
    --patch_height 228 --patch_width 304 --gpus 0 --max_depth 10.0 --num_sample 500 \
    --test_only --pretrain ../pre_trained/NLSPN_NYU.pt --preserve_input --save NLSPN_NYU_v2 --legacy