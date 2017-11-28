#从https://developer.nvidia.com/cuda-downloads 下载合适的run文件
wget http://developer2.download.nvidia.com/compute/cuda/9.0/secure/Prod/local_installers/cuda_9.0.176_384.81_linux.run?f6R4TSUWLAa2r3T9rYfdE7A1W2ChbVlJLbDvBFo0nrMBau9BoBBbraMdyspW6_52BWaTXIGeMEhe2Mdf35NTwig2hAHwRcp7duuhX--pQZxyVUOdYa5KBWXh6_PCVrreP9-COOXN9T853LgnovhypT-FDu8evNes8qfJtLzABCDmuZMclKwsXpAA
sudo sh cuda_9.0.176_384.81_linux.run
# noice :the second choice is n,other is yes .
# according your cuda, change the path
sudo su
sudo echo "export PATH=/usr/local/cuda-9.0/bin:$PATH ">> /etc/profile
sudo echo "export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:$LD_LIBRARY_PATH" >>/etc/profile
exit

