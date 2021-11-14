python3 gnn/tuning.py \
    --gpu_ids 0 \
    --batch_size 64 \
    --verbose \
    --loss_name mce \
    --network_name gmlp_graph_classification \
    --dataset_name dd \
    --train_transform_name indegree \
    --val_transform_name indegree \
    --optimizer_name adam \
    --scheduler_name step \
    --n_epochs 150 \
    --data_dir ./inputs/DD/ \
    --name tuning_gmlp_graph_classification_dd \
    --save_freq 10 \
    --save_dir ./checkpoints \
    --mlflow_root_dir ./mlruns/ \
    --run_name tuning_1115_0437 \
    --lr 2.5e-3 \
    --beta1 0.9 \
    --beta2 0.9 \
    --hidden_dim 32 \
    --ffn_dim 512 \
    --n_layers 4 \
    --lr_decay_iters 300 \
    --lr_decay_gamma 0.3 \
    --prob_survival 1.
