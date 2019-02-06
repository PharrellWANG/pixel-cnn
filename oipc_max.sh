#!/bin/bash
source /home/staff/zxpwang2/intragan/conditional-pixelcnn-decoder/venv/bin/activate
export PYTHONPATH=/home/staff/zxpwang2/intragan/pixel-cnn:${PYTHONPATH}
nvidia-smi
python train.py --nr_gpu=1 \
        --data_dir=data \
        --save_dir=save_max \
        --nr_filters=120 \
        --batch_size=36 \
        -t=2 \
        -tm