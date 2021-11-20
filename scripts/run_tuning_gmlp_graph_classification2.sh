#!/bin/sh

#PJM -L rscgrp=regular-a
#PJM -L node=1
#PJM -L elapse=48:00:00
#PJM -g gs84
#PJM -j

module load cuda/11.1
module load pytorch/1.8.1

source /work/02/gs84/s84000/inductive_node_classification_models/.venv/bin/activate

# 1
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 2
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 3
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 4
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 5
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 6
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 7
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

# 8
# IMDB-BINARY
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_binary --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-BINARY/ --name 1119_tuning_gmlp_graph_classification_imdb_binary --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# IMDB-MULTI
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name imdb_multi --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/IMDB-MULTI/ --name 1119_tuning_gmlp_graph_classification_imdb_multi --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# MUTAG
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name mutag --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/MUTAG/ --name 1119_tuning_gmlp_graph_classification_mutag --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PROTEINS
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name proteins --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PROTEINS/ --name 1119_tuning_gmlp_graph_classification_proteins --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &
# PTC_MR
python3 gnn/tuning.py --gpu_ids 0,1,2,3,4,5,6,7 --batch_size 2048 --verbose --loss_name mce --network_name gmlp_graph_classification --dataset_name ptc_mr --train_transform_name indegree --val_transform_name indegree --optimizer_name adam --scheduler_name step --n_epochs 150 --data_dir ./inputs/PTC_MR/ --name 1119_tuning_gmlp_graph_classification_ptc_mr --save_freq 10 --save_dir ./checkpoints --mlflow_root_dir ./mlruns/ --run_name tuning_1119 --lr 2.5e-3 --beta1 0.9 --beta2 0.9 --hidden_dim 32 --ffn_dim 512 --n_layers 4 --lr_decay_iters 300 --lr_decay_gamma 0.3 --prob_survival 1. &

sleep 300 && nvidia-smi &

wait