Non-Local Spatial Propagation Network for Depth Completion
----------

My environment:
- Ubuntu 18.04
- Python 3.8
- Geforce rtx 3090


What I did for running this code on nyu dataset:
```
# install cuda and pytorch
conda install pytorch==1.8.0 torchvision==0.9.0 torchaudio==0.8.0 cudatoolkit=11.1 -c pytorch -c conda-forge


# install apex
git clone https://github.com/NVIDIA/apex 
cd apex
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" ./
cd ..


# install dcn
git clone https://github.com/chengdazhi/Deformable-Convolution-V2-PyTorch/
cd ./Deformable-Convolution-V2-PyTorch/
git checkout pytorch_1.0.0
sh make.sh
cd ..


# download nyu data and setup
wget http://datasets.lids.mit.edu/sparse-to-dense/data/nyudepthv2.tar.gz
tar -xvf nyudepthv2.tar.gz
cd ./utils
python generate_json_NYUDepthV2.py --path_root ../nyudepthv2/
cd ..


# train
sh train.sh
```