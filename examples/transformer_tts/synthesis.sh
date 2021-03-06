
# train model
CUDA_VISIBLE_DEVICES=0 \
python -u synthesis.py \
--max_len=300 \
--transformer_step=120000 \
--vocoder_step=100000 \
--use_gpu=1 \
--checkpoint_path='./checkpoint' \
--log_dir='./log' \
--sample_path='./sample' \
--config_path='configs/synthesis.yaml' \

if [ $? -ne 0 ]; then
    echo "Failed in training!"
    exit 1
fi
exit 0
