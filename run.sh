
wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.12.0-Linux-x86_64.sh
chmod +x Miniconda3-py37_4.12.0-Linux-x86_64.sh
bash ./Miniconda3-py37_4.12.0-Linux-x86_64.sh -b -f -p /usr/local/

conda create -y -n bttr python=3.7
conda activate bttr
conda install --yes -c pytorch pytorch=1.7.0 torchvision cudatoolkit
pip install -e .

pip uninstall  torchmetrics==0.11.0
pip install  torchmetrics==0.5

python train.py --config config.yaml