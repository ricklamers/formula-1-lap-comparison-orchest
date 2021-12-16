#!/bin/bash

# [Start] Install Python 3.8
source /opt/conda/etc/profile.d/conda.sh

# Set up Python 3.8 environment
OLD_PYTHON_PATH=$(which python)
conda create -n py38 python=3.8 future
conda activate py38

# Link generic `python` to 3.8 conda Python
NEW_PYTHON_PATH=$(which python)
rm $OLD_PYTHON_PATH
ln -s $NEW_PYTHON_PATH $OLD_PYTHON_PATH

# Install Orchest dependencies
cd /orchest/services/base-images/runnable-shared/runner
pip install -r requirements-user.txt
pip install cffi ipykernel ipython jupyter_client future pycryptodomex ipython_genutils
# [End] Install Python 3.8

# Create Python kernel
python -m ipykernel install --user --name=python3.8
JUPYTER_PATH=$(jupyter kernelspec list | grep python3.8 | awk '{print $2}' | sed 's|/kernels/python$||')

echo "export JUPYTER_PATH=$JUPYTER_PATH" >> /home/jovyan/.bashrc 

# Install your dependencies below
pip install fastf1
