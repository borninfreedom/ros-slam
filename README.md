#ubuntu修改默认终端
* https://blog.csdn.net/qq_20336817/article/details/46122849
#YAML语法
* 不能用tab键，全用空格 ；  参数名称后面： /map   必须空一个格 https://www.jianshu.com/p/97222440cd08
# ssh免密登录
* https://blog.csdn.net/zengqiang1/article/details/52997885
# ubuntu串口
* https://www.cnblogs.com/CZM-/p/5926120.html
# static_transform_publisher问题
* https://www.jianshu.com/p/83bbf69ba6d3
# URDF相关参数参考
* https://blog.csdn.net/datase/article/details/78937803
# Human-posture-detection
通过kinect V1检测人体的姿势
# ubuntu 修改默认终端程序
* https://www.cnblogs.com/NCCM/p/4857010.html
在ros下使用kinect V1摄像头的注意事项
---
* 当安装ros时如果选择的是`desktop-full`版本，即完整桌面版安装的话，ros已经集成了kinect的驱动，在`/opt/ros/kinetic/lib/freenect_camera`文件夹下已经有`freenect_node`，所以先启动`roscore`，在终端直接输入`rosrun freenect_camera freenect_node`即可打开摄像头。启动`rosrun rviz rviz,add "images"`,选择好`topic`后即可看到图像。
* 强烈推荐安装`ros-kinetic-perception`软件包，这个程序包包含了ros中和感知相关的各种程序包例如Opencv、PCL等。安装方法 `$sudo apt install ros-版本-perception(推荐使用kinetic版本，资料很多)`。安装好后，运行`roscore、rosrun freenect_camera freenect_node,rostopic list`，你会发现能订阅的topic比原来多了很多，这些都是perception功能包提供的功能。如果要用opencv的话，最好安装。
* 安装perception后，终端运行 `rostopic list` ,终端运行 `$rosrun image_view image_view image:=列出的主题选一`,就会打开一个小窗口显示图像数据
* Kinect v1的输入电压如果超过12V，当执行 `rosrun image_view image_view image:=/camera/rgb/image_raw` 时，画面会有闪烁，就像扫描的那种感觉，一定要降低电压。

# 在ROS Kinetic版本中用Kinect V1实现骨骼追踪
* 实现骨骼追踪在Windows上是用Windows SDK就可以，实现方式很简单。在Ubuntu系统中，没有Windows SDK可用，我们一般是用OpenNI库来实现。
## 安装方法（一定要注意安装顺序不能错，按照我的顺序安装）
### 安装依赖项
* sudo apt install git-core cmake freeglut3-dev pkg-config build-essential libxmu-dev libxi-dev libusb-1.0-0-dev doxygen graphviz mono-complete
### 安装OpenNI
```
mkdir ~/kinect
cd ~/kinect
git clone https://github.com/OpenNI/OpenNI.git
cd OpenNI
git checkout unstable
cd Platform/Linux/CreateRedist/
chmod +x RedistMaker
./RedistMaker
cd ../Redist/OpenNI-Bin-Dev-Linux-x64-v1.5.8.5(这个版本号根据你的而定，你可以一步步 cd 过来，没必要一次 cd 过来，先 cd 到Redist文件夹，再 ls 看一下你的叫什么名，输入前几个字母直接按 tab 就能自动补全)
sudo ./install.sh
```
* 提高git clone速度的方法我会在后面写
* mkdir ~/kinect中，~指你的用户名下的文件夹，比如我的目录级别是 /home/ericwen/kinect，所以/home/ericwen可以直接用 ~ 代替
* **如果执行到 ./RedisMaker 报错，多半是因为没有安装java开发工具和java运行环境**
* 执行 `sudo apt install openjdk-7-jdk openjdk-7-jre` 
### 安装SensorKinect
```
cd ~/kinect/
git clone https://github.com/ph4m/SensorKinect.git
cd SensorKinect
git checkout unstable
cd Platform/Linux/CreateRedist/
chmod +x RedistMaker
./RedistMaker
cd ../Redist/Sensor-Bin-Linux-x64-v5.1.2.1/(这个版本号根据你的而定，你可以一步步 cd 过来，没必要一次 cd 过来，先 cd 到Redist文件夹，再 ls 看一下你的叫什么名，输入前几个字母直接按 tab 就能自动补全)
chmod +x RedistMaker
sudo ./install.sh
```
### 安装NITE
* NITE网上好像没有官网地址，我放个百度云链接吧
* 下载地址链接：https://pan.baidu.com/s/1cHiMcOcSEiG2LHWwdY7d5g 
* 提取码：1id3 
* 我提供的是 .tar.bz2 的格式，直接用Ubuntu自带的归档管理器提取出来就是文件夹,提取出来放在 ~/kinect文件夹下，然后执行下面代码
```
cd ~/kinect
cd NITE-Bin-Dev-Linux-x64-v1.5.2.23/Data(版本号还是和上面一样操作)
```
* **在Data文件夹下有三个文件，分别将三个文件中的 <Licensevendor=”PrimeSense”key=”input the key”/>改为：<Licensevendor=”PrimeSense” key=”0KOIk2JeIBYClPWVnMoRKn5cdY4=”/>**
* 然后执行
```
cd ..  (不要拉了两点，返回到上一层目录的作用)
sudo ./install.sh
```
* 安装过程就全完成了，验证一下安装成功没有
```
cd ~/kinect/OpenNI/Platform/Linux/Bin/x64-Release
./Sample-NiSimpleViewer
```
* 如果能显示你美妙的轮廓，说明安装没问题
### 骨骼点检测
* **删除这个库，不然后面会带来问题**
* `sudo apt-get remove libopenni-sensor-pointclouds0`
* 再执行下面
```
sudo apt install ros-kinetic-openni-launch
sudo apt install ros-kinetic-openni-camera
```
* 安装openni_tracker,这是实现骨骼点检测的关键库（Linux平台），在Windows平台Windows SDK足够优秀
```
cd ~/catkin_ws/src (这个文件夹可以自己随便定，不过后面还有用)
git clone https://github.com/ros-drivers/openni_tracker.git
cd ..
catkin_make
```
* **强烈注意事项，上面自定文件夹执行 catkin_make 以后，一定要把路径setup.bash文件的路径加入到终端的source里面，具体下面**
```
sudo gedit ~/.bashrc
将 source ~/catkin_ws/devel/setup.bash 写入到里面（如果用的是zsh，这个地方就是bash全部换成zsh）
保存退出后终端执行  source ~/.bashrc   (zsh的就是 sorce ~/.zshrc)
```
* shell的source就像Windows的环境变量，方便系统去寻找要执行操作的文件的位置，这个地方以后我还会告诉大家一个Windows上依靠环境变量的神奇操作
### 注意事项
* 检查一下openni_tracker这个package所在的路径是否已经添加到ROS_PACKAGE_PATH中，**如果没有后面会报错找不到openni_tracker这个package**
* 在终端中输入：echo $ROS_PACKAGE_PATH，如果没有显示openni_tracker这个package所在的路径，则在终端中输入：
* export ROS_PACKAGE_PATH=/home/你的用户名/catkin_ws/src:/opt/ros/kinetic/share:/opt/ros/kinetic/stacks(具体内容是在原来ROS_PACKAGE_PATH值 的基础上加上openni_tracker的路径，以“:”分隔,对于openni_tracker的路径如果非要看，可以打开文件管理器，然后在 home 那栏上点击“搜索”的图标，输入openni_tracker即可，搜索速度比Windows快多了）
### 进行测试
* 在桌面直接输入 Ctrl+Alt+T 打开终端，即在你自己的文件夹下目录下操作，即 ~ 目录
* 要先把kinect连接好上电
```
roslaunch openni_launch openni.launch camera:=openni(最后这个小尾巴一定要加，不然到后面rviz里面看不到一个深度的选项)
rosrun rqt_reconfigure rqt_reconfigure( 打开后可以看到左栏里面有个 openni , 点击小三角选择下面的 driver, 勾选 depth_registration ,然后关掉窗口就可以了.具体过程和作用可以参考官网说明：http://wiki.ros.org/openni_launch/Tutorials/QuickStart)
rosrun openni_tracker openni_tracker
rosrun rviz rviz
```
* **强烈注意，上面的每一条命令都在一个新的终端中打开，意思就是每执行一步，就按 Ctrl+Alt+T 打开一个新终端而且前面的终端不能关掉**
* 在rviz中，把GlobalOptions > Fixed Frame 改成openni_depth_optical_frame（如果没有在第一条指令最后添加camera:=openni，那么FixedFrame只有camera_depth_optical_frame可选）；
* 点击Add（左下角），选择PointCloud2，确定；
* 把PointCloud2 >Topic改成/openni/depth_registered/points；
* 再点击Add，选择TF；
* 适当调整可视框中的角度和放大倍数，站在kinect前面，不一会就能看到骨骼点数据了。
### 参考文章
```
http://www.cnblogs.com/hitcm/p/5118318.html

http://blog.ethanlim.net/2013/08/installing-openni-nite-sensorkinect-on.html

http://mitchtech.net/ubuntu-kinect-openni-primesense/

weewqrer的博客：http://blog.csdn.net/weewqrer/article/details/48183969

https://github.com/ros-drivers/openni_tracker/issues/9
```
* **致谢：CSDN博主 杰径通幽 ，https://blog.csdn.net/jackkang01  https://blog.csdn.net/jackkang01/article/details/79669575**
# 在PC端编写程序与OpenNI库链接进行Kinect识别
* 上面的大标题下写的是如何借助于ros系统集成的openni_tracker node进行骨骼追踪，借助于rviz可以很清楚的显示出整体的骨架，但是如果用在机器人身上，我们没必要去显示那样一个画面，而是实现具体的功能，所以这一部分的代码得我们自己完成
## 实现方法请参见 `https://blog.csdn.net/hcx25909/article/details/8619126`
* `http://www.guyuehome.com/` ,这个网站可以多去逛逛，在网站最下面还有古月的CSDN链接。
* 古月在博客中用的是rosmake方法。rosmake方法与catkin_make是两种不同的编译方式，具体参见 `https://blog.csdn.net/ll1234566/article/details/78867979`
# TX2使用
## 一定要换源（源我已经换好了，不重装系统的话不要修改文件了），具体参考 `https://blog.csdn.net/qlulibin/article/details/80271096`
* 因为我在刚拿到手的时候，用的是主服务器，但是下载速度非常慢，而且很多软件在仓库中找不到（TX2是ARM核心，精简指令集，和X86平台的复杂指令集有很大区别），我原先还以为是arm平台就这样，知道后来实在受不了慢的下载速度，换了国内靠谱的arm平台的软件源（ARM平台的软件源比较少，国内的清华和国科大的比较好，在x86平台阿里云、华为、科大、清华等等的都比较好），然后去搜想要下载的软件，竟然在仓库中找到了。
# Turtlebot机器人仿真和建图
## 安装
```
sudo apt install ros-kinetic-turtlebot-*
```
* 在TX2上执行这句显示找不到对应的包，可能软件源里面没有，感兴趣的可以在x86平台上试试。
* 更正：在bash shell上执行上面那句应该没问题，但是我用的zsh,天生不支持*检索，所以只需要在 ~/.zshrc里面添加`setopt no_nomatch`问题迎刃而解，就可以使用上面的指令安装，使用zsh的小伙伴要注意了。
* 那么我们就通过下面这句来安装
```
sudo apt install ros-kinetic-turtlebot
sudo apt install ros-kinetic-turtlebot-gazebo
sudo apt install ros-kinetic-turtlebot-interactions
```
* 安装完成后，执行下面的指令
```
echo "export TURTLEBOT_GAZEBO_WORLD_FILE="/opt/ros/kinetic/share/turtlebot_gazebo/worlds/playground.world"" >> ~/.bashrc
source ~/.bashrc
```
* 如果使用的是zsh，上面的bashrc就是zshrc
* 上面那句的作用就是添加仿真环境的环境变量，使终端能够找到对应的文件，如果不添加上面那句的话，当我们执行下面的指令时，终端也会提醒你设置，可以多留意一下错误信息。
* 然后我们先试一下仿真环境
```
roslaunch turtlebot_gazebo turtlebot_world.launch
```
* 这时候就可以看到仿真环境都已经加载进来了
* 然后打开rviz
```
rosrun rviz rviz
```
* 设置Fixed Frame 为 base_footprint,添加RobotModel PointCloud2 LaserScan Camera等控件，就可以看到这些数据了。
* 启动键盘控制节点
```
roslaunch turtlebot_teleop keyboard_teleop.launch
```
* 根据终端中的提示，就可以控制机器人行走。（注意不是上下左右键，注意看终端的提示信息）
* **接下来，就是导航仿真了**
```
roslaunch turtlebot_gazebo turtlebot_world.launch
roslaunch turtlebot_gazebo gmapping_demo.launch
roslaunch turtlebot_rviz_launchers view_navigation.launch
roslaunch turtlebot_teleop keyboard_teleop.launch
```
* 上面每句都在一个新的终端中打开
* 通过控制机器人移动，就可以看到机器人的导航和建图过程了。
* 仔细移动机器人实现建图，然后我们把建好的地图保存下来，新打开一个终端执行
```
rosrun map_server map_saver -f turtlebot_test_map
```
* 注意：上面指令第一个是 map_server ，第二个是 map_saver ,一个server，一个saver，不一样。我第一次执行的时候就以为是一样的了，就像`rosrun rviz rviz`一样。
* 现在在你的～文件夹下应该有个`turtlebot_test_map.yaml`文件。
* 关掉所有的程序，我们下面来实现导航。
```
roslaunch turtlebot_gazebo turtlebot_world.launch
roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/你的用户名,我的是nvidia,以后我都以nvidia直接写/turtlebot_test_map.yaml
roslaunch turtlebot_rviz_launchers view_navigation.launch
```
* 选中一个地方，机器人就可以过去了。不过我执行的时候问题就是机器人总是转着圈的行走，无解啊。
* 我录了一个完整的视频，[地址](https://www.bilibili.com/video/av49060799)
* 具体见网址https://www.ncnynl.com/archives/201807/2516.html
# 机器人的模拟和真实机器人的设计
* 请利用好这个网站
* [MooreRobots](http://www.moorerobots.com/blog),尽量把所有教程都实现一遍。
# 下位机程序设计
## 下位机硬件清单：Arduino Mega2560, TB6612FNG电机驱动器， AB相霍尔编码器
* 我们目前先对这三个主要硬件编写程序以便它们能与上位机的ROS系统进行通信。
* 我们使用的是ros_arduino_bridge,这个的具体介绍[地址](https://github.com/borninfreedom/ros_arduino_bridge).在README.txt部分有详细的介绍，翻译自ros_arduino_bridge项目，原网址[地址](https://github.com/hbrobotics/ros_arduino_bridge).原版ros_arduino_bridge（下文用rab表示）采用的是arduino_mega2560的板子，通讯部分（communication.h）不用改动，但是他们用的电机驱动器和编码器驱动都不适合咱们的硬件，所以得进行修改。第一个地址中是国内进行的修改，把电机驱动换成了L298的驱动，编码器同样是AB相霍尔编码器，砍掉了伺服和传感器部分。
* 咱们自己的程序也是在他们的基础上进行的改进。把电机驱动换成TB6612FNG的，编码器部分进行了部分改动。同时对软件架构重写，因为他们的.h .ino模式在我的机器上编译不成功，所以我将他们全都换成.ino格式，同时把定义放在main.ino中。Arduino IDE的多文件管理一直被我吐槽，不怎么好用。
## 我在代码中也做了些注释，应该不难看懂。
## 还有一个就是Arduino IDE的安装，因为我们要和ＲＯＳ进行通讯，所以最好在Ubuntu上装个IDE，可以很方便的和ＲＯＳ进行通讯调试。
* 我想说的就是Arduino IDE的安装，不要按照网上的教程，用apt安装，那个是1.0版本，非常老旧，非常不好用，现在是1.8。具体参考[这篇博客](https://blog.csdn.net/snoopy_neu/article/details/80745401)，不同之处在于我们不把压缩包解压到Download下面，而是/opt目录，/opt目录是管理可选安装的目录，放在这一是系统文件夹比较安全，二是方便我们管理。我们要从Arduino官网自己下载最新的版本，然后手动安装。
* 非常强调一点：安装顺序:1.arduino ide, 2.ros_arduino_bridge.   安装注意事项：在安装ros_arduino_bridge的时候，因为要让arduino IDE找到rab的库，所以需要把rab相应的包放到ide的目录下。在“安装ros_arduino_bridge功能包集”（参考https://github.com/borninfreedom/ros_arduino_bridge安装即可） 的时候，一定要注意我们的和他的不一样，他指定的目录是老旧的arduino ide使用的目录，新版的ide的libraries目录在 ~/Arduino下，所以我把文件拷贝到这下面，但是我更推荐把文件放在 `/opt/Arduino-xxx/libraries`目录下，因为ide的示例程序都放在这个文件夹下面，所以我们也放在那里面，不容易被不小心删除掉。
* 执行完安装，打开ide，`文件/示例/RosArduinoBridge`就可以看到了。
* 这部分因为细节性的处理特别多，一一都说我都不知道该说啥，就想到了这几个大的方面，在做的时候有啥问题可以随时联系我。QQ：1092711328,微信:13061406195
# ROS多机通讯配置
* 因为我们要把tx2放在机器人上，所以我们得通过另外一台电脑来控制他。多机通讯请参考https://www.jianshu.com/p/69815d79d37f 。 文字叙述部分大家按照说明做一做，配置部分我们和他的不一样。
* 我们的配置清单：
```
1.配置tx2的hosts   sudo vi /etc/hosts
2.添加   10.22.37.40  tegra-ubuntu      #ip是tx2的ip（连接校园网下的，如果用手机开热点，会变）， tegra-ubuntu是tx2的机器名称
        10.22.15.208  eric-ubuntu      #ip是我的电脑的ip，后面是我的电脑的名称，注意不是你的用户名，是hostname，在终端敲入hostname出现的名字。用你的电脑的话，配置成你的即可。 ifconfig查看自己电脑的ip
3.在你的电脑进行相同的配置，配置内容也是相同的。
4.因为我们的tx2是主机，所有主要的节点和roscore都运行在上面，所以tx2的配置就完成了。
5.在自己的电脑端， echo "export ROS_MASTER_URI=http://10.22.37.40:11311" >> ~/.zshrc     如果用的是bash，zsh一律换成bash
```
# 我们统一用git管理代码,具体请学习见网站https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000,最好把所有内容都自己实现一遍.
* 我简单的把整个流程写一遍,其中需要用到邮箱和其他的东西,我全都写我自己的,用的时候注意换成你自己的.
```
1.首先,我们在github上建立一个仓库,因为我已经把仓库建好了,所以这步就略,直接fork我的过去就可以.
2.然后在终端执行 ssh-keygen -t rsa -C "ericwen657@foxmail.com"
3.cat ~/.ssh/id_rsa.pub
4.将终端上打印出来的内容复制,去github 你的账户下面,点击你的账户下面的小三角  有个设置,设置里面有个ssh设置,点击添加ssh key  ,title随便写,把复制的终端的内容粘贴进去.
5.在你的仓库上,有个clone or download上,点击ssh,把地址复制一下
6.在终端 mkdir -p ~/git/repos ,  cd ~/git/repos
7.git clone 复制的地址
8.这样就把github上的仓库克隆到本地了.
9.在自己仓库的文件夹里,执行  git add .       git commit -m "描述"   git push -u origin master 
10.之后的提交最后一步就可以直接用  git push  简化
```
# ubuntu安装字体
```
sudo mkfontscale
sudo mkfontdir
sudo fc-cache
```
# TX2:换源 https://blog.csdn.net/qlulibin/article/details/80271096
