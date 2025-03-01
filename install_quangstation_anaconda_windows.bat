@echo off

if not defined CONDA_PREFIX (
    echo No anaconda prompt detected.
    echo Run this script in an anaconda prompt.
    exit /b
)

conda env list | findstr /c:"quangstation" >nul 2>&1
if %errorlevel% == 1 (
    echo Creating the quangstation environment
    call conda create --name quangstation python=3.9
)

call conda activate quangstation

pip3 install --upgrade pip
pip3 install pydicom
pip3 install numpy>=1.24.0
pip3 install scipy
pip3 install matplotlib
pip3 install Pillow
pip3 install PyQt5==5.15.7
pip3 install pyqtgraph
pip3 install sparse_dot_mkl
pip3 install vtk==9.2.6
pip3 install SimpleITK
pip3 install pandas
pip3 install scikit-image
pip3 install pymedphys==0.40.0

pip3 install tensorflow
pip3 install keras
rem pip3 install cupy

echo
echo Start the quangstation GUI by running
echo      start_quangstation_anaconda_windows.bat