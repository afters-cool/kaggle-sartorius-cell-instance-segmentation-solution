# finetune the segmentor on competition data(train split)
python tools/seg/train.py configs/seg/upernet_swin-t_kaggle.py --load-from work_dirs/upernet_swin-t_livecell/epoch_1.pth

# predict instance masks of competition data(val split)
python tools/seg/test.py configs/seg/upernet_swin-t_kaggle.py work_dirs/upernet_swin-t_kaggle/epoch_10.pth --out work_dirs/upernet_swin-t_kaggle/val_results.pkl --eval dummy