# finetune the detector on competition data(train split)
python tools/det/train_cots.py configs/det/yolox_x_cots.py --load-from work_dirs/yolox_x_cots_youtube/epoch_30.pth

# predict bboxes of competition data(val split)
python tools/det/test_cots.py configs/det/yolox_x_cots.py work_dirs/yolox_x_cots/epoch_30.pth --out work_dirs/yolox_x_cots/val_preds.pkl --eval bbox
