# train detector using the LIVECell dataset
python tools/det/train_cots.py configs/det/yolox_x_cots_youtube.py


python tools/det/test_cots.py configs/det/yolox_x_cots_youtube.py work_dirs/yolox_x_cots_youtube/epoch_30.pth --out work_dirs/yolox_x_cots_youtube/val_preds.pkl --eval bbox
