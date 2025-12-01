How to run on cloudlab:
- Find suitable instance (not K GPU) with >= 24GB of memory
- Install nvidia drivers
- Copy wikipedia dataset from local machine into VM
- Run scripts as listed here, you may have to adjust paths

11/18: Achieved R@100 of 0.514 by training model on first 4 chunks (000-003) of the wikipedia dataset using batch size of 128 and all other params as default.