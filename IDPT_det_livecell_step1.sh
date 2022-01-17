# train detector using the LIVECell dataset
python tools/det/train.py configs/det/yolox_x_livecell.py

# predict bboxes of LIVECell validataion data
#python tools/det/test.py configs/det/yolox_x_livecell.py work_dirs/yolox_x_livecell/epoch_30.pth --out work_dirs/yolox_x_livecell/val_preds.pkl --eval bbox

python tools/det/test.py configs/det/yolox_x_livecell.py work_dirs/yolox_x_livecell/epoch_15.pth --out work_dirs/yolox_x_livecell/val_preds.pkl --eval bbox
