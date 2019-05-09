;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::TrajectoryOptions)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'TrajectoryOptions (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::TRAJECTORYOPTIONS")
  (make-package "CARTOGRAPHER_ROS_MSGS::TRAJECTORYOPTIONS"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryOptions.msg.html


(defclass cartographer_ros_msgs::TrajectoryOptions
  :super ros::object
  :slots (_tracking_frame _published_frame _odom_frame _provide_odom_frame _use_odometry _use_nav_sat _use_landmarks _publish_frame_projected_to_2d _num_laser_scans _num_multi_echo_laser_scans _num_subdivisions_per_laser_scan _num_point_clouds _rangefinder_sampling_ratio _odometry_sampling_ratio _fixed_frame_pose_sampling_ratio _imu_sampling_ratio _landmarks_sampling_ratio _trajectory_builder_options_proto ))

(defmethod cartographer_ros_msgs::TrajectoryOptions
  (:init
   (&key
    ((:tracking_frame __tracking_frame) "")
    ((:published_frame __published_frame) "")
    ((:odom_frame __odom_frame) "")
    ((:provide_odom_frame __provide_odom_frame) nil)
    ((:use_odometry __use_odometry) nil)
    ((:use_nav_sat __use_nav_sat) nil)
    ((:use_landmarks __use_landmarks) nil)
    ((:publish_frame_projected_to_2d __publish_frame_projected_to_2d) nil)
    ((:num_laser_scans __num_laser_scans) 0)
    ((:num_multi_echo_laser_scans __num_multi_echo_laser_scans) 0)
    ((:num_subdivisions_per_laser_scan __num_subdivisions_per_laser_scan) 0)
    ((:num_point_clouds __num_point_clouds) 0)
    ((:rangefinder_sampling_ratio __rangefinder_sampling_ratio) 0.0)
    ((:odometry_sampling_ratio __odometry_sampling_ratio) 0.0)
    ((:fixed_frame_pose_sampling_ratio __fixed_frame_pose_sampling_ratio) 0.0)
    ((:imu_sampling_ratio __imu_sampling_ratio) 0.0)
    ((:landmarks_sampling_ratio __landmarks_sampling_ratio) 0.0)
    ((:trajectory_builder_options_proto __trajectory_builder_options_proto) "")
    )
   (send-super :init)
   (setq _tracking_frame (string __tracking_frame))
   (setq _published_frame (string __published_frame))
   (setq _odom_frame (string __odom_frame))
   (setq _provide_odom_frame __provide_odom_frame)
   (setq _use_odometry __use_odometry)
   (setq _use_nav_sat __use_nav_sat)
   (setq _use_landmarks __use_landmarks)
   (setq _publish_frame_projected_to_2d __publish_frame_projected_to_2d)
   (setq _num_laser_scans (round __num_laser_scans))
   (setq _num_multi_echo_laser_scans (round __num_multi_echo_laser_scans))
   (setq _num_subdivisions_per_laser_scan (round __num_subdivisions_per_laser_scan))
   (setq _num_point_clouds (round __num_point_clouds))
   (setq _rangefinder_sampling_ratio (float __rangefinder_sampling_ratio))
   (setq _odometry_sampling_ratio (float __odometry_sampling_ratio))
   (setq _fixed_frame_pose_sampling_ratio (float __fixed_frame_pose_sampling_ratio))
   (setq _imu_sampling_ratio (float __imu_sampling_ratio))
   (setq _landmarks_sampling_ratio (float __landmarks_sampling_ratio))
   (setq _trajectory_builder_options_proto (string __trajectory_builder_options_proto))
   self)
  (:tracking_frame
   (&optional __tracking_frame)
   (if __tracking_frame (setq _tracking_frame __tracking_frame)) _tracking_frame)
  (:published_frame
   (&optional __published_frame)
   (if __published_frame (setq _published_frame __published_frame)) _published_frame)
  (:odom_frame
   (&optional __odom_frame)
   (if __odom_frame (setq _odom_frame __odom_frame)) _odom_frame)
  (:provide_odom_frame
   (&optional __provide_odom_frame)
   (if __provide_odom_frame (setq _provide_odom_frame __provide_odom_frame)) _provide_odom_frame)
  (:use_odometry
   (&optional __use_odometry)
   (if __use_odometry (setq _use_odometry __use_odometry)) _use_odometry)
  (:use_nav_sat
   (&optional __use_nav_sat)
   (if __use_nav_sat (setq _use_nav_sat __use_nav_sat)) _use_nav_sat)
  (:use_landmarks
   (&optional __use_landmarks)
   (if __use_landmarks (setq _use_landmarks __use_landmarks)) _use_landmarks)
  (:publish_frame_projected_to_2d
   (&optional __publish_frame_projected_to_2d)
   (if __publish_frame_projected_to_2d (setq _publish_frame_projected_to_2d __publish_frame_projected_to_2d)) _publish_frame_projected_to_2d)
  (:num_laser_scans
   (&optional __num_laser_scans)
   (if __num_laser_scans (setq _num_laser_scans __num_laser_scans)) _num_laser_scans)
  (:num_multi_echo_laser_scans
   (&optional __num_multi_echo_laser_scans)
   (if __num_multi_echo_laser_scans (setq _num_multi_echo_laser_scans __num_multi_echo_laser_scans)) _num_multi_echo_laser_scans)
  (:num_subdivisions_per_laser_scan
   (&optional __num_subdivisions_per_laser_scan)
   (if __num_subdivisions_per_laser_scan (setq _num_subdivisions_per_laser_scan __num_subdivisions_per_laser_scan)) _num_subdivisions_per_laser_scan)
  (:num_point_clouds
   (&optional __num_point_clouds)
   (if __num_point_clouds (setq _num_point_clouds __num_point_clouds)) _num_point_clouds)
  (:rangefinder_sampling_ratio
   (&optional __rangefinder_sampling_ratio)
   (if __rangefinder_sampling_ratio (setq _rangefinder_sampling_ratio __rangefinder_sampling_ratio)) _rangefinder_sampling_ratio)
  (:odometry_sampling_ratio
   (&optional __odometry_sampling_ratio)
   (if __odometry_sampling_ratio (setq _odometry_sampling_ratio __odometry_sampling_ratio)) _odometry_sampling_ratio)
  (:fixed_frame_pose_sampling_ratio
   (&optional __fixed_frame_pose_sampling_ratio)
   (if __fixed_frame_pose_sampling_ratio (setq _fixed_frame_pose_sampling_ratio __fixed_frame_pose_sampling_ratio)) _fixed_frame_pose_sampling_ratio)
  (:imu_sampling_ratio
   (&optional __imu_sampling_ratio)
   (if __imu_sampling_ratio (setq _imu_sampling_ratio __imu_sampling_ratio)) _imu_sampling_ratio)
  (:landmarks_sampling_ratio
   (&optional __landmarks_sampling_ratio)
   (if __landmarks_sampling_ratio (setq _landmarks_sampling_ratio __landmarks_sampling_ratio)) _landmarks_sampling_ratio)
  (:trajectory_builder_options_proto
   (&optional __trajectory_builder_options_proto)
   (if __trajectory_builder_options_proto (setq _trajectory_builder_options_proto __trajectory_builder_options_proto)) _trajectory_builder_options_proto)
  (:serialization-length
   ()
   (+
    ;; string _tracking_frame
    4 (length _tracking_frame)
    ;; string _published_frame
    4 (length _published_frame)
    ;; string _odom_frame
    4 (length _odom_frame)
    ;; bool _provide_odom_frame
    1
    ;; bool _use_odometry
    1
    ;; bool _use_nav_sat
    1
    ;; bool _use_landmarks
    1
    ;; bool _publish_frame_projected_to_2d
    1
    ;; int32 _num_laser_scans
    4
    ;; int32 _num_multi_echo_laser_scans
    4
    ;; int32 _num_subdivisions_per_laser_scan
    4
    ;; int32 _num_point_clouds
    4
    ;; float64 _rangefinder_sampling_ratio
    8
    ;; float64 _odometry_sampling_ratio
    8
    ;; float64 _fixed_frame_pose_sampling_ratio
    8
    ;; float64 _imu_sampling_ratio
    8
    ;; float64 _landmarks_sampling_ratio
    8
    ;; string _trajectory_builder_options_proto
    4 (length _trajectory_builder_options_proto)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tracking_frame
       (write-long (length _tracking_frame) s) (princ _tracking_frame s)
     ;; string _published_frame
       (write-long (length _published_frame) s) (princ _published_frame s)
     ;; string _odom_frame
       (write-long (length _odom_frame) s) (princ _odom_frame s)
     ;; bool _provide_odom_frame
       (if _provide_odom_frame (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_odometry
       (if _use_odometry (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_nav_sat
       (if _use_nav_sat (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_landmarks
       (if _use_landmarks (write-byte -1 s) (write-byte 0 s))
     ;; bool _publish_frame_projected_to_2d
       (if _publish_frame_projected_to_2d (write-byte -1 s) (write-byte 0 s))
     ;; int32 _num_laser_scans
       (write-long _num_laser_scans s)
     ;; int32 _num_multi_echo_laser_scans
       (write-long _num_multi_echo_laser_scans s)
     ;; int32 _num_subdivisions_per_laser_scan
       (write-long _num_subdivisions_per_laser_scan s)
     ;; int32 _num_point_clouds
       (write-long _num_point_clouds s)
     ;; float64 _rangefinder_sampling_ratio
       (sys::poke _rangefinder_sampling_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odometry_sampling_ratio
       (sys::poke _odometry_sampling_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fixed_frame_pose_sampling_ratio
       (sys::poke _fixed_frame_pose_sampling_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_sampling_ratio
       (sys::poke _imu_sampling_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _landmarks_sampling_ratio
       (sys::poke _landmarks_sampling_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _trajectory_builder_options_proto
       (write-long (length _trajectory_builder_options_proto) s) (princ _trajectory_builder_options_proto s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tracking_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tracking_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _published_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _published_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _odom_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _odom_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _provide_odom_frame
     (setq _provide_odom_frame (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_odometry
     (setq _use_odometry (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_nav_sat
     (setq _use_nav_sat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_landmarks
     (setq _use_landmarks (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _publish_frame_projected_to_2d
     (setq _publish_frame_projected_to_2d (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _num_laser_scans
     (setq _num_laser_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_multi_echo_laser_scans
     (setq _num_multi_echo_laser_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_subdivisions_per_laser_scan
     (setq _num_subdivisions_per_laser_scan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_point_clouds
     (setq _num_point_clouds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _rangefinder_sampling_ratio
     (setq _rangefinder_sampling_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odometry_sampling_ratio
     (setq _odometry_sampling_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fixed_frame_pose_sampling_ratio
     (setq _fixed_frame_pose_sampling_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_sampling_ratio
     (setq _imu_sampling_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _landmarks_sampling_ratio
     (setq _landmarks_sampling_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _trajectory_builder_options_proto
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trajectory_builder_options_proto (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::TrajectoryOptions :md5sum-) "7eda9b62c16c18fa1563587e73501e47")
(setf (get cartographer_ros_msgs::TrajectoryOptions :datatype-) "cartographer_ros_msgs/TrajectoryOptions")
(setf (get cartographer_ros_msgs::TrajectoryOptions :definition-)
      "# Copyright 2016 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

string tracking_frame
string published_frame
string odom_frame
bool provide_odom_frame
bool use_odometry
bool use_nav_sat
bool use_landmarks
bool publish_frame_projected_to_2d
int32 num_laser_scans
int32 num_multi_echo_laser_scans
int32 num_subdivisions_per_laser_scan
int32 num_point_clouds
float64 rangefinder_sampling_ratio
float64 odometry_sampling_ratio
float64 fixed_frame_pose_sampling_ratio
float64 imu_sampling_ratio
float64 landmarks_sampling_ratio

# This is a binary-encoded
# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.
string trajectory_builder_options_proto

")



(provide :cartographer_ros_msgs/TrajectoryOptions "7eda9b62c16c18fa1563587e73501e47")


