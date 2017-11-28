
#下载 opencv 并解压 下载网址：https://github.com/Itseez/opencv/archive/2.4.13.zip
mkdir opencv
cd opencv
#下载opencv
wget https://github.com/Itseez/opencv/archive/2.4.13.zip
#解压文件到当前目录
unzip 2.4.13
cd opencv-2.4.13
#安装编译工具
sudo apt-get install build-essential
#安装依赖包
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
#安装可选包
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev


#新建一个文件夹用于存放临时文件：
mkdir release
#切换到该临时文件夹：
cd release
#开始编译：
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j4    #开启线程 按照自己的配置
sudo make install

#配置环境
sudo su
#将/usr/local/lib加到/etc/ld.so.conf.d/opencv.conf末尾
sudo echo "/usr/local/lib">>/etc/ld.so.conf.d/opencv.conf
#使配置生效
sudo ldconfig 

sudo echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig">>/etc/bash.bashrc
sudo echo "export PKG_CONFIG_PATH">>/etc/bash.bashrc 
#使配置生效
sudo source /etc/bash.bashrc  

exit
sudo updatedb #更新database

#验证是否安装了opencv
pkg-config --modversion opencv

#返回版本数即安装成功



