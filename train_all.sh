#!/bin/bash


# train detector using the LIVECell dataset
python tools/det/train.py configs/det/yolox_x_livecell.py

# predict bboxes of LIVECell validataion data
python tools/det/test.py configs/det/yolox_x_livecell.py work_dirs/yolox_x_livecell/epoch_30.pth --out work_dirs/yolox_x_livecell/val_preds.pkl --eval bbox

# finetune the detector on competition data(train split)
python tools/det/train.py configs/det/yolox_x_kaggle.py --load-from work_dirs/yolox_x_livecell/epoch_15.pth

# predict bboxes of competition data(val split)
python tools/det/test.py configs/det/yolox_x_kaggle.py work_dirs/yolox_x_kaggle/epoch_30.pth --out work_dirs/yolox_x_kaggle/val_preds.pkl --eval bbox

# train segmentor using LIVECell dataset
python tools/seg/train.py configs/seg/upernet_swin-t_livecell.py

# finetune the segmentor on competition data(train split)
python tools/seg/train.py configs/seg/upernet_swin-t_kaggle.py --load-from work_dirs/upernet_swin-t_livecell/epoch_1.pth

# predict instance masks of competition data(val split)
python tools/seg/test.py configs/seg/upernet_swin-t_kaggle.py work_dirs/upernet_swin-t_kaggle/epoch_10.pth --out work_dirs/upernet_swin-t_kaggle/val_results.pkl --eval dummy