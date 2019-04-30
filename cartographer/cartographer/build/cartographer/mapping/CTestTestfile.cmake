# CMake generated Testfile for 
# Source directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/cartographer/mapping
# Build directory: /home/nvidia/git/repos/ros/catkin_ws/src/cartographer/cartographer/build/cartographer/mapping
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mapping_probability_values_test "mapping_probability_values_test")
add_test(mapping_sensor_collator_test "mapping_sensor_collator_test")
add_test(mapping_sparse_pose_graph_test "mapping_sparse_pose_graph_test")
add_test(mapping_submaps_test "mapping_submaps_test")
add_test(mapping_trajectory_connectivity_test "mapping_trajectory_connectivity_test")
subdirs(proto)
subdirs(sparse_pose_graph)
