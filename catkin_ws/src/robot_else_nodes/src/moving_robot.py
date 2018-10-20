#!/usr/bin/env python
# -*- coding:utf-8 -*-

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

#初始化
print "-------Starting robot setup:-------"
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('moving_robot', anonymous=True)

robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group = moveit_commander.MoveGroupCommander("manipulator")

#设置允许误差
group.set_goal_joint_tolerance(0.001)

#设置速度与加速度
group.set_max_velocity_scaling_factor(0.1)
group.set_max_acceleration_scaling_factor(0.1)

#动作前准备，预留时间
print "Prepare to working......"
rospy.sleep(5)

#位置规划
def movingPosition():
    print "Generating plan 1"
    group.clear_pose_targets()
    
    pose_target = geometry_msgs.msg.Pose()
    pose_target.orientation.w = 1.0
    pose_target.position.x = 0.6
    pose_target.position.y = 0
    pose_target.position.z = 0.6
    group.set_pose_target(pose_target)

    plan1 = group.plan()
    print "The generating end"
    print "Moving....."
    group.execute(plan1)
    print "Moving end"
    rospy.sleep(1)

    group_variable_current_values = group.get_current_joint_values()
    print "Current Joint values: ", group_variable_current_values

    group.clear_pose_targets()
    print "working end"

#角度规划
def movingAngle():
    print "Generating plan 2"
    group.clear_pose_targets()

    group_variable_values = group.get_current_joint_values()
    print "Original Joint values: ", group_variable_values
    #group_variable_values[]从0至5分别为底座至末端的关节,顺时针为正
    group_variable_values[0] = 1.0
    group.set_joint_value_target(group_variable_values)

    plan2 = group.plan()
    print "The generating end"
    print "Moving....."
    group.execute(plan2)
    print "Moving end"
    rospy.sleep(1)

    group_variable_current_values = group.get_current_joint_values()
    print "Current Joint values: ", group_variable_current_values

    group.clear_pose_targets()
    print "working end"

if __name__ == "__main__":
    try:
        #movingPosition()
        movingAngle()

        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)
        
    except rospy.ROSInterruptException:
        pass
