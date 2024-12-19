### Instruction to fine-tuning Grounding DINO with custom dataset

## Prepare dataset
- Prepare dataset in the `/data` folder following this structure:
  - `images`: all images
  - `annotations`: JSON file following COCO format
  - `test`: all test images

  *(See a few samples in `/data_sample/seal`)*

- Config file:
  See `configs/grounding_dino/grounding_dino_swin-t_finetune_2xb2_seal.py`.
  
  **#TODO:** Update the following fields:
  - `data_root`
  - `class_name`
  - `train_dataloader`
  - `val_dataloader`

## Fine-tuning
Run the following command:
```bash
./tools/dist_train.sh 'path_to_config_file' 8 --work-dir 'path_to_save'
```

## Test
Refer to `run.sh` for further instructions.
