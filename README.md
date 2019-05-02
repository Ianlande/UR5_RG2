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
- the first code is used to start the simulation  
- if you see the "All is well! Everyone is happy! You can start planning now!" after using the second code, it means that the simulation can be used.  
- the third code is used to open the rviz and control ur5  
- you should used code "source ./devel/setup.bash" if is necessary  
- you can't control rg2 in rviz because rviz haven't rg2 model  
- this code can't connect real ur5 in laboratory with virtual ur5 in rviz
- if you think the code is too long or too complex, you can use the usage 2 which is showed in the next line, or maybe you can create a `.launch` file to implement the above functions

### usage 2:
```
    roslaunch ur5_moveit_config demo.launch
```

## Equipment joint adjustment
