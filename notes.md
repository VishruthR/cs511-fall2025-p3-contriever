How to run on cloudlab:
- Find suitable instance (not K GPU) with >= 24GB of memory
- Install nvidia drivers
- Copy wikipedia dataset from local machine into VM
- Run scripts as listed here, you may have to adjust paths

11/18: Achieved R@100 of 0.514 by training model on first 4 chunks (000-003) of the wikipedia dataset using batch size of 128 and all other params as default.

Had issues with exploding gradients and some NaN calculations on my Mac. Added some code to clip gradients and discard batches with NaN values. Also adjusted learning rate down to avoid large steps.

step-50000: 0.838 R@100
step-100000: 0.847 R@100

By step 100,000, the model actually hit a learning rate of 0