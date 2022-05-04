cd ./src
python main.py --dir_data ../nyudepthv2 --data_name NYU  --split_json ../data_json/nyu.json --patch_height 228 --patch_width 304 --gpus 0  --epochs 20 --batch_size 12 --max_depth 10.0 --num_sample 500 --save model_name
