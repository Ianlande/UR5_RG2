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
from moveit_msgs.msg import PlanningScene, ObjectColor
from moveit_commander.conversions import pose_to_list
from geometry_msgs.msg import PoseStamped, Pose


#初始化
print "-------Starting robot setup:-------"
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('moving_robot', anonymous=True)

robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group = moveit_commander.MoveGroupCommander("manipulator")

#发布物体颜色的topic,用于更改物体颜色
scene_pub = rospy.Publisher('planning_scene', PlanningScene)
colors = dict()

#设置允许误差
group.set_goal_joint_tolerance(0.001)
group.set_goal_position_tolerance(0.001)
group.set_goal_orientation_tolerance(0.001)

#设置速度与加速度
group.set_max_velocity_scaling_factor(0.1)
group.set_max_acceleration_scaling_factor(0.1)

#运动规划设置
group.allow_replanning(True)
group.set_planning_time(5)

#动作前准备，预留时间
print "Prepare to working......"
rospy.sleep(5)

#添加障碍物
def add_object_base():
    print "add RobotBase1"
    RobotBase1_id = 'RobotBase1'
    scene.remove_world_object(RobotBase1_id)
    group_reference_frame = group.get_planning_frame()

    RobotBase1_size = [0.9, 0.6, 0.2]
    RobotBase1_pose = PoseStamped()
    RobotBase1_pose.header.frame_id = group_reference_frame
    RobotBase1_pose.pose.position.x = 0.0
    RobotBase1_pose.pose.position.y = 0.0
    RobotBase1_pose.pose.position.z = -0.1
    RobotBase1_pose.pose.orientation.w = 1.0

    scene.add_box(RobotBase1_id, RobotBase1_pose, RobotBase1_size)

    setColor(RobotBase1_id, 0.8, 0.8, 0.8, 1.0)
    sentColors()
    rospy.sleep(1)

def add_object_camera():
    print "add CameraBase1"
    CameraBase1_id = 'CameraBase1'
    scene.remove_world_object(CameraBase1_id)
    group_reference_frame = group.get_planning_frame()

    CameraBase1_size = [0.2, 0.6, 1.0]
    CameraBase1_pose = PoseStamped()
    CameraBase1_pose.header.frame_id = group_reference_frame
    CameraBase1_pose.pose.position.x = -0.3
    CameraBase1_pose.pose.position.y = 0.0
    CameraBase1_pose.pose.position.z = 0.5
    CameraBase1_pose.pose.orientation.w = 1.0

    scene.add_box(CameraBase1_id, CameraBase1_pose, CameraBase1_size)

    setColor(CameraBase1_id, 0.8, 0.8, 0.8, 1.0)
    sentColors()
    rospy.sleep(1)

def setColor(name, r, g, b, a=0.9):
    color = ObjectColor()
    color.id = name
    color.color.r = r
    color.color.g = g
    color.color.b = b
    color.color.a = a
    colors[name] = color

def sentColors():
    p = PlanningScene()
    p.is_diff = True
    for color in colors.values():
        p.object_colors.append(color)
    scene_pub.publish(p)

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
    group_variable_values[1] = -1.6
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
        add_object_base()
        add_object_camera()
        #movingPosition()
        #movingAngle()

        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)

    except rospy.ROSInterruptException:
        pass
