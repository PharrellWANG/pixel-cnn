#!/bin/bash
source /home/staff/zxpwang2/intragan/conditional-pixelcnn-decoder/venv/bin/activate
export PYTHONPATH=/home/staff/zxpwang2/intragan/pixel-cnn:${PYTHONPATH}
nvidia-smi
python train.py --nr_gpu=1 \
        --data_dir=data \
        --save_dir=save_sample \
        --nr_filters=160 \
        --batch_size=48 \
        -t=2