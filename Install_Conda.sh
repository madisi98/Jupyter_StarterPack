wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod 777 Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
source $HOME/.bashrc
conda env create -f environment.yml
mkdir $HOME/jupyter-desk
mkdir $HOME/.jupyter
mv jupyter_notebook_config.py $HOME/.jupyter
mv run_jupyter $(echo $PATH | cut -d':' -f1)
mv screen_jupyter $(echo $PATH | cut -d':' -f1)
rm Miniconda3-latest-Linux-x86_64.sh
