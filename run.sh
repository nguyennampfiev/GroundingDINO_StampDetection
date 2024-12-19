image_dir="./data/seal/images"

# Loop through each image in the directory
for image_file in "$image_dir"/*; do
    # Check if the file is an image (you can adjust this condition based on your specific file extensions)
    python demo/image_demo.py "$image_file" configs/grounding_dino/grounding_dino_swin-t_finetune_2xb2_seal.py --weights seal_work_dir/best_coco_bbox_mAP_epoch_11.pth --texts seal
        # Add your image processing command here
        # For example, you could display the image using an image viewer
        # e.g., display "$image_file" &

done

