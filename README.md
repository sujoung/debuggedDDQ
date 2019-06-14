# Deep Dyna-Q: Integrating Planning for Task-Completion Dialogue Policy Learning
*An implementation of the  
[Deep Dyna-Q: Integrating Planning for Task-Completion Dialogue Policy Learning](https://arxiv.org/abs/1801.06176)*

[Github repository of original DDQ](https://github.com/MiuLab/DDQ)

This document is a description of the modified version of DDQ which is originally from MiuLab

## How to run?
1) First, make a virtualenv
`conda create -n ddq python=2.7 anaconda`

2) Then
`cd ddq`  
`source activate ddq`  
`git clone *repository_address*`  
`cd debuggedDDQ/src`  

3) Install packages
Requirement is written below this section.
When installing PyTorch, please use the command that is given on their [website](https://pytorch.org/).
If you scroll down a bit, you can see QUICK START LOCALLY section.
There you can select what kind of environment you have now then it will give you a command.

4) When training, please modify the `train_k3.bash`.  
k3 means 3 planning steps.  
You can put your desired number of planning step K-1 on this argument `--planning_steps` which is 2 now.  
After adjustment you can run `bash train_k3.bash`. (You can rename the `.bash` file)  

5) If You don't want to train, you can use my trained model which is trained on 500 epochs.  
In that case, you can run `bash test_ddq_k5.bash`.  
If you want to see 10 sample test dialogs, you can modify `--episodes` flag to 10.  
Be aware the argument with the flag `--trained_model_path`.  
This requires the `.p`(pickle) file of the last training epoch.  
If you don't want to train a new model, you can just leave it as it is.  
The model that I have trined is passed on that argument already in the `.bash` file  

## Requirement
* python 2.7 (conda environment is strongly recommended)  
* matplotlib  
* h5py  
* torch  

## Debugging
* Array type confusion on epsilon greedy policy on `src/deep_dialog/agents/agent_dqn.py`
* OSError: directory error on 'src/run.py'

## Future debugging plan
* Confusion on prediction mode after second epochs when testing `agent_dqn.py`, `dialog_manager.py`

## Reference

Main papers to be cited
```
@inproceedings{Peng2018DeepDynaQ,
  title={Deep Dyna-Q: Integrating Planning for Task-Completion Dialogue Policy Learning},
  author={Peng, Baolin and Li, Xiujun and Gao, Jianfeng and Liu, Jingjing and Wong, Kam-Fai and Su, Shang-Yu},
  booktitle={ACL},
  year={2018}
}

@article{li2016user,
  title={A User Simulator for Task-Completion Dialogues},
  author={Li, Xiujun and Lipton, Zachary C and Dhingra, Bhuwan and Li, Lihong and Gao, Jianfeng and Chen, Yun-Nung},
  journal={arXiv preprint arXiv:1612.05688},
  year={2016}
}
