import os
from launch import LaunchDescription

import launch_ros
from launch.substitutions import Command, LaunchConfiguration
def generate_launch_description():
    pkg_share = launch_ros.substitutions.FindPackageShare(package='rc_nav2').find('rc_nav2')

    robot_localization_node = launch_ros.actions.Node(
        package='robot_localization',
        executable='ekf_node',
        name='ekf_filter_node',
        output='screen',
        parameters=[os.path.join(pkg_share, 'config/ekf.yaml')]
    )

    return LaunchDescription([robot_localization_node])
