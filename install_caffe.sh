#--------------------------------------------------------------------------#
#install caffe
#install dependency
sudo apt-get update 
sudo apt-get install -y build-essential cmake git pkg-config 
 sudo apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler 
 sudo apt-get install -y libatlas-base-dev 
sudo apt-get install -y --no-install-recommends libboost-all-dev 
 sudo apt-get install -y libgflags-dev libgoogle-glog-dev liblmdb-dev 
 sudo apt-get install -y python-pip 
 sudo apt-get install -y python-dev 
 sudo apt-get install -y python-numpy python-scipy

# path of caffe
#unzip caffe
#cd caffe
git clone https://github.com/BVLC/caffe.git  #从github上git caffe
cd caffe #opencv caffe which download from github 
sudo cp Makefile.config.example Makefile.config   #将Makefile.config.example的内容复制到Makefile.config # copy Makefile.config.example to Makefile.config
#因为make指令只能make Makefile.config文件，而Makefile.config.example是caffe给出的makefile例子 
sudo gedit Makefile.config #打开Makefile.config文件
#打开之后修改如下内容：
#若使用cudnn，则将# USE_CUDNN := 1 修改成： USE_CUDNN := 1 
#若使用的opencv版本是3的，则将# OPENCV_VERSION := 3 修改为： OPENCV_VERSION := 3 
#若要使用python来编写layer，则需要将# WITH_PYTHON_LAYER := 1 修改为 WITH_PYTHON_LAYER := 1 
#重要的一项 将# Whatever else you find you need goes here.下面的 INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib 
#修改为： INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include /usr/include/hdf5/serial 
 #     LIBRARY_DIRS := $(PYTHON_LIB) /usr/local/lib /usr/lib /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/hdf5/serial //这是因为ubuntu16.04的文件包含位置发生了变化，尤其是需要用到的hdf5的位置，所以需要更改这一路径

#若使用MATLAB接口的话，则要讲MATLAB_DIR换成你自己的MATLAB安装路径
#MATLAB_DIR := /usr/local
#MATLAB_DIR := /usr/local/matlab2014a
mkdir build  
cd build  
cmake .. 
make -j10 
