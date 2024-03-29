#!/usr/bin/env bash

python run.py --agt 9 --usr 1 --max_turn 40 \
	      --movie_kb_path ./deep_dialog/data/movie_kb.1k.p \
	      --dqn_hidden_size 80 \
	      --experience_replay_pool_size 5000 \
	      --episodes 5 \
	      --simulation_epoch_size 100 \
	      --write_model_dir ./deep_dialog/checkpoints/DDQAgent/ \
	      --slot_err_prob 0.00 \
	      --intent_err_prob 0.00 \
	      --batch_size 16 \
	      --goal_file_path ./deep_dialog/data/user_goals_first_turn_template.part.movie.v1.p \
	      --trained_model_path ./deep_dialog/checkpoints/DDQAgent/agt_9_200_500_0.67800.pkl \
	      --run_mode 0
