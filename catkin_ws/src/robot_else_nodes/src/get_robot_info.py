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

print "-------Starting robot setup:-------"
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('get_robot_info', anonymous=True)

robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()

group_name = "manipulator"
group = moveit_commander.MoveGroupCommander(group_name)

print "Reference frame: %s" % group.get_planning_frame()
print "Reference frame: %s" % group.get_end_effector_link()

print "Robot Groups:"
print robot.get_group_names()

print "Printing robot state:"
print robot.get_current_state()
print "------------------------"
