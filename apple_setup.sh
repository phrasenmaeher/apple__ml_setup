rm ~/Downloads/Miniforge3-MacOSX-arm64.sh
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh -P ~/Downloads/  #donwload the latest miniforge
chmod +x ~/Downloads/Miniforge3-MacOSX-arm64.sh #make the file executable
sh ~/Downloads/Miniforge3-MacOSX-arm64.sh -b -p ~/miniforge3 #install miniforge (a conda derivative)
source ~/miniforge3/bin/activate #activate the conda
echo ""
echo "Finished miniforge installation; creating new machine learning environment"
echo ""
conda create -n machine_learning python=3.9 -y #create a new environment
conda activate machine_learning #activate the new environment
echo ""
echo "Installing TensorFlow"
echo ""
conda install -c apple tensorflow-deps -y #install dependencies for tensorflow
python -m pip install tensorflow-macos #install tensorflow
echo ""
echo "Installing PyTorch and Sklearn"
echo ""
python -m pip install torch scikit-learn #install pytorch and sklearn/scikit-learn
echo "Script finished and environment ready for machine learning."