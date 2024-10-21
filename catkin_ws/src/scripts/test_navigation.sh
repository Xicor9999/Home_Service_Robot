#!/bin/sh
xterm  -e  "bash -c ' source devel/setup.bash;
roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find my_robot)/worlds/thuanld5_world'" &
echo "Launching Gazebo..."
sleep 10
xterm -hold -e  "bash -c ' source /opt/ros/kinetic/setup.bash;
source devel/setup.bash;
roslaunch turtlebot_gazebo amcl_demo.launch initial_pose_x:=2.2281 initial_pose_y:=0.1481 initial_pose_a:=-1.5307'" & 
echo "Launching AMCL..."
sleep 10
echo "Launching Rviz..."
xterm  -e  "bash -c ' source devel/setup.bash; 
roslaunch turtlebot_rviz_launchers view_navigation.launch'"
