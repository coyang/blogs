# Change Python version by `conda`

Change python version by `conda`.

1. Install `anaconda`
2. Change python verion

Take change python version to python3.10.6 as example:

```bash
conda search python
conda create -n py3.10.6 python=3.10.6
conda activate py3.10.6
conda install python=3.10.6
python --version
```
