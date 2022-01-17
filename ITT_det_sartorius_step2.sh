# finetune the detector on competition data(train split)
python tools/det/train.py configs/det/yolox_x_kaggle.py --load-from work_dirs/yolox_x_livecell/epoch_15.pth

# predict bboxes of competition data(val split)
python tools/det/test.py configs/det/yolox_x_kaggle.py work_dirs/yolox_x_kaggle/epoch_30.pth --out work_dirs/yolox_x_kaggle/val_preds.pkl --eval bbox
