python3 gnn/train.py \
    --gpu_ids 0 \
    --verbose \
    --loss_name nll \
    --network_name DGCNN \
    --dataset_name MUTAG \
    --dataloader_name simple \
    --logger_name mlflow \
    --batch_size 128 \
    --train_transform_name indegree \
    --test_transform_name indegree \
    --optimizer_name adam \
    --n_epochs 100 \
    --data_dir ./inputs/MUTAG/ \
    --index_file_dir ./inputs/MUTAG/10fold_idx/ \
    --name mutag \
    --save_freq 5 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name test_mutag \
    --lr 0.00001 \
    --beta1 0.5 \
    --beta2 0.999 \

