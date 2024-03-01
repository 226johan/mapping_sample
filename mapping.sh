colcon build
cmds=("ros2 launch fdilink_ahrs ahrs_driver.launch.py"
    "ros2 launch sllidar_ros2 sllidar_s2_launch.py"
    "ros2 launch rc_nav2 online_async.launch.py"
    "ros2 launch rc_nav2 robot_localization.launch.py"
)

for cmd in "${cmds[@]}"
do 
    echo Current CMD : "$cmd"
    gnome-terminal -- bash -c "cd $(pwd);source install/setup.bash;$cmd;exec bash;"
    sleep 0.2
done