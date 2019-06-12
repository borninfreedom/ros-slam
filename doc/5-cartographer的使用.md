# cartographer的介绍
* 在官网有详细的介绍  https://google-cartographer-ros.readthedocs.io/en/latest/
# cartographer安装
```
sudo apt update
sudo apt install -y python-wstool python-rosdep ninja-build

mkdir cartographer_ws
cd cartographer_ws
wstool init src
wstool merge -t src  https://raw.githubusercontent.com/googlecartographer/cartographer_ros/master/cartographer_ros.rosinstall

一定要注意，在执行下一步指令之前，要对官网的安装方式进行些修改，原ceres网站国内上不去，需要改成github上对应的网址

cd src
ls -ah
vi .rosinstall

将 ceres-solver的uri改为下面
https://github.com/ceres-solver/ceres-solver.git

然后回到 cartographer_ws 文件夹下
wstool update -t src

src/cartographer/scripts/install_proto3.sh    #有个小技巧，当进入一个目录时，cd cartographer_ws可以进入，直接输入cartographer也可以进入，执行一个文件同理，所以这个指令可以直接执行

sudo rosdep init   #如果之前装了ros，这个指令会报错，忽略即可，不会影响后面安装
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y

catkin_make_isolated --install --use-ninja
```
# 地图保存
```
rosservice call /write_state /home/nvidia/maps/xxx.pbstream  #建议用绝对路径，避免使用 ~/maps 这种形式的路径
```
# 转换地图格式，pbstream不能用于ros的导航，所以需要将pbstream转换为pgm和yaml两个文件
```
rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=/home/nvidia/maps/xxxx  -pbstream_filename=/home/nvidia/maps/xxx.pbstream -resolution=0.05
```
# 更详细更具体的介绍可以看一下网址
* https://www.cnblogs.com/hiram-zhang/p/10415865.html
