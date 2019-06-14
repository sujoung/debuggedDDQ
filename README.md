# Deep Dyna-Q: Integrating Planning for Task-Completion Dialogue Policy Learning
*An implementation of the  
[Deep Dyna-Q: Integrating Planning for Task-Completion Dialogue Policy Learning](https://arxiv.org/abs/1801.06176)*

[Github repository of original DDQ](https://github.com/MiuLab/DDQ)

This document is a description of the modified version of DDQ which is originally from MiuLab

## Requirement
* python 2.7 (conda environment is strongly recommended)  
* matplotlib  
* h5py  
* torch  

## Debugging
* Array type confusion on epsilon greedy policy on 'src/deep_dialog/agents/agent_dqn.py'
* OSError: directory error on 'src/run.py'

## Future debugging plan
* Confusion on prediction mode after second epochs when testing 'agent_dqn.py', 'dialog_manager.py'

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
