image_dir="./data/seal/test"

# Loop through each image in the directory
for image_file in "$image_dir"/*; do
    # Check if the file is an image (you can adjust this condition based on your specific file extensions)
    python demo/image_demo.py "$image_file" configs/grounding_dino/grounding_dino_swin-b_finetune_16xb2_1x_coco.py --weights groundingdino_swint_ogc_mmdet-822d7e9d.pth --texts seal --out-dir tmp-base
        # Add your image processing command here
        # For example, you could display the image using an image viewer
        # e.g., display "$image_file" &

done

