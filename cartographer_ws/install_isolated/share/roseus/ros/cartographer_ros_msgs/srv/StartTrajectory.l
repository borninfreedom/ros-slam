;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::StartTrajectory)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'StartTrajectory (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::STARTTRAJECTORY")
  (make-package "CARTOGRAPHER_ROS_MSGS::STARTTRAJECTORY"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::STARTTRAJECTORYREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::STARTTRAJECTORYREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::STARTTRAJECTORYRESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::STARTTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::StartTrajectoryRequest
  :super ros::object
  :slots (_options _topics ))

(defmethod cartographer_ros_msgs::StartTrajectoryRequest
  (:init
   (&key
    ((:options __options) (instance cartographer_ros_msgs::TrajectoryOptions :init))
    ((:topics __topics) (instance cartographer_ros_msgs::SensorTopics :init))
    )
   (send-super :init)
   (setq _options __options)
   (setq _topics __topics)
   self)
  (:options
   (&rest __options)
   (if (keywordp (car __options))
       (send* _options __options)
     (progn
       (if __options (setq _options (car __options)))
       _options)))
  (:topics
   (&rest __topics)
   (if (keywordp (car __topics))
       (send* _topics __topics)
     (progn
       (if __topics (setq _topics (car __topics)))
       _topics)))
  (:serialization-length
   ()
   (+
    ;; cartographer_ros_msgs/TrajectoryOptions _options
    (send _options :serialization-length)
    ;; cartographer_ros_msgs/SensorTopics _topics
    (send _topics :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cartographer_ros_msgs/TrajectoryOptions _options
       (send _options :serialize s)
     ;; cartographer_ros_msgs/SensorTopics _topics
       (send _topics :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cartographer_ros_msgs/TrajectoryOptions _options
     (send _options :deserialize buf ptr-) (incf ptr- (send _options :serialization-length))
   ;; cartographer_ros_msgs/SensorTopics _topics
     (send _topics :deserialize buf ptr-) (incf ptr- (send _topics :serialization-length))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::StartTrajectoryResponse
  :super ros::object
  :slots (_status _trajectory_id ))

(defmethod cartographer_ros_msgs::StartTrajectoryResponse
  (:init
   (&key
    ((:status __status) (instance cartographer_ros_msgs::StatusResponse :init))
    ((:trajectory_id __trajectory_id) 0)
    )
   (send-super :init)
   (setq _status __status)
   (setq _trajectory_id (round __trajectory_id))
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:serialization-length
   ()
   (+
    ;; cartographer_ros_msgs/StatusResponse _status
    (send _status :serialization-length)
    ;; int32 _trajectory_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cartographer_ros_msgs/StatusResponse _status
       (send _status :serialize s)
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cartographer_ros_msgs/StatusResponse _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cartographer_ros_msgs::StartTrajectory
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::StartTrajectory :md5sum-) "bed83613a1da70f1e83eafd765dad59d")
(setf (get cartographer_ros_msgs::StartTrajectory :datatype-) "cartographer_ros_msgs/StartTrajectory")
(setf (get cartographer_ros_msgs::StartTrajectory :request) cartographer_ros_msgs::StartTrajectoryRequest)
(setf (get cartographer_ros_msgs::StartTrajectory :response) cartographer_ros_msgs::StartTrajectoryResponse)

(defmethod cartographer_ros_msgs::StartTrajectoryRequest
  (:response () (instance cartographer_ros_msgs::StartTrajectoryResponse :init)))

(setf (get cartographer_ros_msgs::StartTrajectoryRequest :md5sum-) "bed83613a1da70f1e83eafd765dad59d")
(setf (get cartographer_ros_msgs::StartTrajectoryRequest :datatype-) "cartographer_ros_msgs/StartTrajectoryRequest")
(setf (get cartographer_ros_msgs::StartTrajectoryRequest :definition-)
      "













cartographer_ros_msgs/TrajectoryOptions options
cartographer_ros_msgs/SensorTopics topics

================================================================================
MSG: cartographer_ros_msgs/TrajectoryOptions
# Copyright 2016 The Cartographer Authors
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

================================================================================
MSG: cartographer_ros_msgs/SensorTopics
# Copyright 2016 The Cartographer Authors
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

string laser_scan_topic
string multi_echo_laser_scan_topic
string point_cloud2_topic
string imu_topic
string odometry_topic
string nav_sat_fix_topic
string landmark_topic
---
cartographer_ros_msgs/StatusResponse status
int32 trajectory_id


================================================================================
MSG: cartographer_ros_msgs/StatusResponse
# Copyright 2018 The Cartographer Authors
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

# A common message type to indicate the outcome of a service call.
uint8 code
string message
")

(setf (get cartographer_ros_msgs::StartTrajectoryResponse :md5sum-) "bed83613a1da70f1e83eafd765dad59d")
(setf (get cartographer_ros_msgs::StartTrajectoryResponse :datatype-) "cartographer_ros_msgs/StartTrajectoryResponse")
(setf (get cartographer_ros_msgs::StartTrajectoryResponse :definition-)
      "













cartographer_ros_msgs/TrajectoryOptions options
cartographer_ros_msgs/SensorTopics topics

================================================================================
MSG: cartographer_ros_msgs/TrajectoryOptions
# Copyright 2016 The Cartographer Authors
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

================================================================================
MSG: cartographer_ros_msgs/SensorTopics
# Copyright 2016 The Cartographer Authors
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

string laser_scan_topic
string multi_echo_laser_scan_topic
string point_cloud2_topic
string imu_topic
string odometry_topic
string nav_sat_fix_topic
string landmark_topic
---
cartographer_ros_msgs/StatusResponse status
int32 trajectory_id


================================================================================
MSG: cartographer_ros_msgs/StatusResponse
# Copyright 2018 The Cartographer Authors
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

# A common message type to indicate the outcome of a service call.
uint8 code
string message
")



(provide :cartographer_ros_msgs/StartTrajectory "bed83613a1da70f1e83eafd765dad59d")


