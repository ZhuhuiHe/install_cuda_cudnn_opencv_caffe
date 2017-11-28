#参考 http://blog.csdn.net/xuzhongxiong/article/details/52717285
#安装依赖项
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler 
sudo apt-get install --no-install-recommends libboost-all-dev
sudo apt-get install libopenblas-dev liblapack-dev libatlas-base-dev
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev
#安装驱动
sudo apt-get remove --purge nvidia* #卸载之前的驱动版本
#sudo service lightdm stop #集成显卡需要安装之前禁止一项，独显忽略

sudo add-apt-repository ppa:xorg-edgers/ppa
sudo apt-get update
sudo apt-get install nvidia-384 #注意在这里指定自己的驱动版本！
#安装完成后检验 安装是否成功
sudo nvidia-smi
