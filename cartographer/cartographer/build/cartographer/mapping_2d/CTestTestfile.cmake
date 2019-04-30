# CMake generated Testfile for 
# Source directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping_2d
# Build directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping_2d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mapping_2d_laser_fan_inserter_test "mapping_2d_laser_fan_inserter_test")
add_test(mapping_2d_map_limits_test "mapping_2d_map_limits_test")
add_test(mapping_2d_probability_grid_test "mapping_2d_probability_grid_test")
add_test(mapping_2d_sparse_pose_graph_test "mapping_2d_sparse_pose_graph_test")
add_test(mapping_2d_submaps_test "mapping_2d_submaps_test")
add_test(mapping_2d_xy_index_test "mapping_2d_xy_index_test")
subdirs(proto)
subdirs(scan_matching)
subdirs(sparse_pose_graph)
