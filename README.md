该项目使用imu和2d激光雷达传感器基于navigation2实现建图与导航功能
代完善：行为树部分

# 使用
编译
colcon build


"ros2 launch fdilink_ahrs ahrs_driver.launch.py"
"ros2 launch sllidar_ros2 sllidar_s2_launch.py"
"ros2 launch rc_nav2 robot_localization.launch.py"
"ros2 launch rc_nav2 online_async.launch.py"

# 功能包

## fdilink_ahes
imu驱动
修改了驱动源码 只发布imu的数据 修改了数据校验逻辑
创建ahrs_bringup节点 
publisher: sensor_msgs::msg::Imu   /imu

## sllidar_ros2
激光雷达驱动
创建sllidar_node节点
publisher: sensor_msgs::msg::Laserscan /scan

## rc_nav2
### 传感器数据融合 
使用robot_localization框架
支持imu gps gnss odom 等多种类型数据融合， 并发布里程计 以及odom->base_link之间的坐标变换

参数说明
        map_frame: map              # Defaults to "map" if unspecified
        odom_frame: odom            # Defaults to "odom" if unspecified
        base_link_frame: base_link  # Defaults to "base_link" ifunspecified
        world_frame: odom           # Defaults to the value ofodom_frame if unspecified

### 本地地图构建
使用slam_tools框架

前提：需要odom->base_link的坐标变换 /scan /odom 数据
