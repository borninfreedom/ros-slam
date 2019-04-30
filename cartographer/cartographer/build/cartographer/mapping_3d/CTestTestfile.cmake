# CMake generated Testfile for 
# Source directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_3d
# Build directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_3d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mapping_3d_hybrid_grid_test "mapping_3d_hybrid_grid_test")
add_test(mapping_3d_kalman_local_trajectory_builder_test "mapping_3d_kalman_local_trajectory_builder_test")
add_test(mapping_3d_laser_fan_inserter_test "mapping_3d_laser_fan_inserter_test")
add_test(mapping_3d_motion_filter_test "mapping_3d_motion_filter_test")
subdirs(proto)
subdirs(scan_matching)
subdirs(sparse_pose_graph)
