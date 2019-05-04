# UR5_RG2
已经配置好的包，可以实现RVIZ仿真、UR5实物与RVIZ通信联调、控制RG2

------

## 文件
catkin_ws ： 主文件，`_isolated`为后缀的文件表示本地发布的项目  
ur5_scenes ：RVIZ中的`.scene`文件，用于向RVIZ仿真环境中添加物体  

------

## RVIZ仿真
### 方法 1 
```
  roslaunch ur_gazebo ur5.launch  
  roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch sim:=true  
  roslaunch ur5_moveit_config moveit_rviz.launch config:=true  
```
#### 命令说明
> * 第一行：启动仿真程序  
> * 第二行：执行完命令后，如果最后看到绿色字体`All is well! Everyone is happy! You can start planning now!`，就代表成功了  
> * 第三行：使用RVIZ控制仿真机械臂，在RVIZ中拖动机械臂到某个位置，并选择`planned and excute`就可以观察到机械臂在`RVIZ`和`Gazebo`中同时运动，也可以修改`OMPL`或者`Planning`中的`Option`修改移动速度等参数  
#### 注意
> * 所有命令的执行应该在目录`catkin_ws`下， 参考命令`cd ~/catkin_ws`  
> * 在执行完一个终端命令后，应该打开一个新终端，再执行下一条新终端命令  
> * 如果有必要，使用命令`source ./devel/setup.bash`  
> * 上诉命令不能使UR5实物与RVIZ通信联调，只能在RVIZ中仿真，不能控制实体UR5  
> * RVIZ中暂时不能控制RG2，因为包中没有RG2的RVIZ模型  
> * 如果上诉命令过于冗长，可以使用`方法 2`的命令，只有一行，或者可以自行创建`.launch`文件实现上诉功能  
### 方法 2 
```
    roslaunch ur5_moveit_config demo.launch
```

------

## UR5实物与RVIZ通信联调
### 命令
```
  roslaunch ur_modern_driver ur5_bringup.launch robot_ip:=192.168.1.102(IP地址填写UR5的IP地址)
  roslaunch ur5_moveit_config ur5_moveit_planning_execution.launch limited:=true
  roslaunch ur5_moveit_config moveit_rviz.launch config:=true
```
#### 说明
如果一切正常，你会看到RVIZ中的UR5机械臂和实体UR5的状态是一致的，控制UR5机械臂实物运动，RVIZ里的虚拟机械臂也会跟着实体移动。反过来也一样，控制RVIZ中UR5机械臂运动，UR5实物也会跟着运动。至此，UR5本体在ROS系统上的通信和控制都建立成功了。

-----

## 控制RG2
由于RVIZ仿真不能控制RG2，所以控制RG2需要先控制UR5实物
### 在完成UR5实物与RVIZ通信联调的基础上执行以下命令
```
  rosrun ur_control rg2_server_node.py  
```
检测RG2此时是否处于抓取物体状态，返回`True`说明RG2已经抓取物体，否则返回`False`
```
  rosservice call /rg2_gripper/grip_detect
```
控制RG2的打开程度，修改`data`后的`float`类型数据，这是一个0.0~110.0的数
``` 
rosservice call /rg2_gripper/control_width "target_width:  
  data:0.0"
```

------

## DEMO
`catkin_ws\src\robot_else_nodes\src`路径下的`.py`文件  
`get_robot_info.py`：获取机械臂与关节信息  
`moving_robot.py`：控制机械臂的demo 
### `moving_robot.py`说明
#### `main`函数
```python
def main():
    try:
        print "============ Press 'Enter' to begin ============"
        raw_input()
        R = MoveGroupPythonIntefaceRobot()
        
        # 以下是主要的几个功能函数
        # 为机械臂添加一个底座，机械臂会自动避障，可以在RVIZ中看到添加的障碍物
        R.add_object_base()
        # 为机械臂添加一个障碍物，用于支撑相机
        R.add_object_camera()
        R.movingPosition()      # 控制机械臂末端移动到机械臂坐标下的某个坐标点
        R.movingAngle()         # 控制机械臂各个关节的移动角度
```
#### `movingPosition`函数
```python
    pose_target.orientation.w = 1.0   # 方向
    pose_target.position.x = 0.6      # x坐标
    pose_target.position.y = 0.2      # y坐标
    pose_target.position.z = 0.6      # z坐标
```
#### `movingAngle`函数
```python
    print "Original Joint values: ", group_variable_values
    # group_variable_values[num]=angle，num从0至5分别为底座至末端的关节，angle顺时针为正
    # group_variable_values[1]表示从底座数起的第二个关节逆时针转动1.6
    group_variable_values[1] = -1.6
```
#### 控制RG2闭合
参考`control.py`
```
    self.request.target_width.data=0.0
```
