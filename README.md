# UR5_RG2
已经配置好的包，可以实现RVIZ仿真、UR5实物与RVIZ通信联调、控制RG2
------



# UR5_RG2
a package had been configured used to control ur5 and rg2
## rviz simulation：
### usage 1:
```
  roslaunch ur_gazebo ur5.launch  
  roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch sim:=true  
  roslaunch ur5_moveit_config moveit_rviz.launch config:=true  
```
#### Interpretation and explanation：
- all the code should be used in catalogue `catkin_ws`, you can refer to the code `cd ~/catkin_ws`  
- you should open a new terminal to input the next code after running the last code  
- the first code is used to start the simulation  
- if you see the "All is well! Everyone is happy! You can start planning now!" after using the second code, it means that the simulation can be used.  
- the third code is used to open the rviz and control ur5  
- you should used code "source ./devel/setup.bash" if is necessary  
- you can't control rg2 in rviz because rviz haven't rg2 model  
- this code can't connect real ur5 in laboratory with virtual ur5 in rviz  
- if you think the code is too long or too complex, you can use the usage 2 which is showed in the `usage 2`, or maybe you can create a `.launch` file to implement the above functions
### usage 2:
```
    roslaunch ur5_moveit_config demo.launch
```
## Equipment joint adjustment:
### code:
```
  roslaunch ur_modern_driver ur5_bringup.launch robot_ip:=192.168.1.102 ## IP address is your ur5's IP address, it may be different with the IP address in here
  roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch limited:=true  
  roslaunch ur5_moveit_config moveit_rviz.launch config:=true  
```
#### Interpretation and explanation：
if all goes well, you'll see the state of ur5 mechanical arm in rviz is consistent with the physical state of real ur5, it means that the equipment joint adjustment is success.
## control rg2
### code:
```
  roslaunch ur_modern_driver ur5_bringup.launch robot_ip:=192.168.1.102 ## IP address is your ur5's IP address, it may be different with the IP address in here
  roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch limited:=true  
  roslaunch ur5_moveit_config moveit_rviz.launch config:=true  
  # connect rg2  
  rosrun ur_control rg2_server_node.py  
  # detects whether an object is gripped by rg2:  
  rosservice call /rg2_gripper/grip_detect  
  # grip object: you can modify the float number, the number represent the rg2's open degree, is anumber 0.0~110.0  
  rosservice call /rg2_gripper/control_width "target_width:  
    data:0.0"
```
#### Interpretation and explanation：
if you want to control rg2, you should connect real ur5 in laboratory with virtual ur5 in rviz first
