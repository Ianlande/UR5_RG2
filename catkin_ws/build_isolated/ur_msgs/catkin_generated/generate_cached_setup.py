# -*- coding: utf-8 -*-
from __future__ import print_function
import argparse
import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/indigo/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/indigo/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in "/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur_kinematics;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur_gazebo;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur5_moveit_config;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur3_moveit_config;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur10_moveit_config;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur_description;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur_bringup;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/universal_robot;/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/robot_else_nodes;/opt/ros/indigo".split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/longyucheng/robot_ur5/catkin_ws/devel_isolated/ur_msgs/env.sh')

output_filename = '/home/longyucheng/robot_ur5/catkin_ws/build_isolated/ur_msgs/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
